# coreboot on arm64 Proof of concept guide
----

## Table of contents

1. [Background](#sec1)
2. [Proof of concept Overview](#sec2)
3. [Building and running proof of concept](#sec3)
    - 3.1 [Prerequisites](#sec3.1)
    - 3.2 [Building containers](#sec3.2)
    - 3.3 [Running the containers](#sec3.3)


# 1. Background <a name="sec1"> </a>

UEFI/EDK2 has long served as the standard for PC and server firmware. It offers various runtime services to the OS, generates OS consumables like the ACPI tables, supports a host of features such as capsule update, and is highly extensible. However there are less developers who are focused on EDK2 as opposed other projects like the Linux Kernel, its runtime footprint leaves surfaces for security vulnerabilities, and it requires drivers to be written just for EDK2.

coreboot + Linuxboot is a alternate firmware stack to UEFI/EDK2 that has become increasingly popular with hyperscalars to address some of these shortcomings. coreboot + Linuxboot reuses drivers from linux, reduces the the attack surfaces by removing runtime components, and moves normal world firmware component into linux which is highly customizable.

Historically the only open source firmware supported by arm servers has been UEFI/EDK2 based, leaving users like hyperscalars without the option to pursue alternatives like coreboot + Linuxboot.

arm has previously worked to ensure that EDK2 + Linuxboot worked on arm systems which is used by some, but its a solution that provides only the LinuxBoot benefits, without reducing attack surfaces, and creates a large duplication of functionality between EDK2 and Linuxboot.

Porting coreboot to server class arm hardware may seem trivial at first, as coreboot is used by arm powered chromebooks, but these existing implementations lack ACPI support, a key component for servers. Furthermore x86 systems relay on a legacy method to pass ACPI tables to the Linux Kernel which is not available for arm. For an arm system to run Linux with ACPI enabled, the only valid way to pass the ACPI tables is through the UEFI configuration table. This creates a requirement for the runtime portion of the UEFI system table to be implemented, furthermore it must not contain `NULL` pointers. 

But now arm has worked to enable coreboot + Linuxboot firmware on server class systems. This both serves as a proof of concept, and as reference for further development of hardware with coreboot + Linuxboot firmware ensuring users like hyperscalars no longer only have one firmware choice on arm servers.


# 2. Proof of concept Overview <a name="sec2"> </a>


```
    +-------------------------------------------------------------------------------------------------------------------------+
    |                                                                                                +----------------------+ |
    |                                                                                                |  Linux Distribution  | |
EL1 |                                                                        +--------------------+  |                      | |
    |                                                                        |    Linux kernel    |  +-----------▲----------+ |
    |                                                                        |         +          |              |            |
    +------------------------------------------------------------------------+ - - - u-root - - - +--------------|------------+
    |                                               +---------------------+  |                    |---(kexec)----+            |
    |                         +-----------------+   |     UEFI Shim       |  +------▲-------------+                           |
EL2 |                         |    coreboot     |   |   [UEFI Runtime]    |         |                                         |
    |                         | [ACPI, SMBIOS]  +---►     (minimal)       +---------+                                         |
    |                         +------▲----------+   +---------------------+                                                   |
    +--------------------------------+----------------------------------------------------------------------------------------+
    | +--------------------+         |                                                                                        |
    | | Trusted Firmware-A |         |                                                                                        |
EL3 | | [SMCCC,PSCI,...]   +---------+                                                                                        |
    | +--------------------+                                                                                                  |
    +-------------------------------------------------------------------------------------------------------------------------+
```
The table above shows the boot flow of the proof of concept. It also lists where components are responsible for generating the interfaces and consumables for the final OS (I.e. SMCC & SMBIOS,...).


Trusted firmware A (TF-A) is the first stage of the boot flow doing silicon initialization, the hardware is ready to use after this stage. It is the reference implementation of the secure world, and provides interfaces such as the Secure Monitor Call Calling Convention (SMCCC) and the Power State Coordination Interface (PSCI). for this proof of concepts nothing was changed with the existing TF-A implementations for each platform.

coreboot is the second stage of the boot flow, it creates the ACPI tables pointers and generates generic tables, that the operating system uses to understand and communicate with the hardware. Changes in the coreboot upstream had to be made to remove non-generic tables and create arm specific tables/entires. coreboot also generates the SMBIOS tables which provide inventory information to the system and the user.

### Note: For this proof of concept we chose to follow a bootflow that is more similar to existing arm server implementations, this includes arm trusted firmware (TF-A) doing silicon initialization. This does not follow the conventional coreboot implementations where coreboot does all of the initialization and then loads only the  TF-A secure monitor. This approach may make it easier for existing platforms and vendors to adopt coreboot firmware, but does not preclude the use of coreboot in the conventional way, and may be disadvantageous as a long term solution.

The next stage is a UEFI shim layer that generates a minimal set of UEFI interfaces required in the Linuxboot Base Boot Requirments (LBBR) recipe outlined in the arm [Base Boot Requirements 2.1](https://developer.arm.com/documentation/den0044/h/). As stated in the background, to boot Linux with ACPI on arm, The ACPI tables _must_ be passed via the UEFI system table. This necessitates the UEFI runtime services to be implemented. The pointers can not be `NULL`. However, these runtime services can return UNSUPPORTED or other appropriate status codes. This shim is based on the U-boot UEFI implementation which is well tested, removing all un-used componentes. It provides just enough to boot Linux, such as the few essential boot & runtime services, leaves the console for status printing, and removes all unnecessary extra components such as UEFI variables and UEFI network support.

LinuxBoot is the final stage, made up of linux kernel, and the U-root initramfs. It provides similar functionality as traditional firmware, such as disk and network boot options built into U-root. But it is an easy base for customization as its a standard Linux kernel which many developers are used to writing programs for. It also allows the reuse of drivers so separate drivers don't have to be written just for UEFI/EDK2, and the Linux Kernel has far more eyes reviewing and hardening the code than EDK2. From LinuxBoot, a kexec can be used to transition to the final operating system.

All together this gives us a firmware stack that boots Linux distros Like Fedora, while providing the functionality of ACPI & SMBIOS, as well as giving the end users such as hyperscalers the flexibility and customization of Linuxboot. 

# 3. Building and running proof of concept <a name="sec3"> </a>

## 3.1 Prerequisite <a name="sec3.1"> </a>

In order to build and run the proof of concepts, you will need 

1. internet connection to download submodules and models
2. x86 or arm64 based system
3. docker installed on your system

### Note: its recommended you have 16GB+ of ram and 8+ CPU cores


## 3.2 Building containers <a name="sec3.2"> </a>
### 3.2.1 Update submodule <a name="sec3.2.1"> </a>
make sure the git submodules are up to date by running

```
./init.sh
```

### 3.2.2 Build Neoverse Docker container <a name="sec3.2.2"> </a>
To build the project for the neoverse target run:
```
DOCKER_BUILDKIT=1 docker build --progress=plain -f Dockerfile.neoverse -t 9esec/arm-builder:dev .
```

### 3.2.3 Build SBSA-QEMU Docker container <a name="sec3.2.3"> </a>
To build the project for the SBSA-QEMU run:
```
DOCKER_BUILDKIT=1 docker build --progress=plain -f Dockerfile.qemu -t 9esec/arm-builder:dev .
```

Note: coreboot build is tested only on x86 for now. If you are building docker container on ARM platform, please add this line to build x86 docker: `--platform linux/amd64`  

## 3.3 Running the containers <a name="sec3.3"> </a>
In order to build and compile the firmware, we need to run the created docker images, below are steps for both the FVP and QEMU Firmware.
 


### 3.3.1 Neoverse FVP: <a name="sec3.3.1"> </a>
If you would like the build the coreboot firmware proof of concept for Neoverse, follow these steps

To build the firmware, after following the steps in [3.2.2](#sec3.2.2), you need to run
```
make -f Makefile.neoverse docker_neoverse_build
```
After the steps in are complete you can run the following command to boot the Neoverse FVP with the firmware
```
make -f Makefile.neoverse neoverse_run
```

---
### 3.3.2 For QEMU-SBSA: <a name="sec3.3.2"> </a>
If you would like to build the coreboot firmware proof of concept for SBSA-QEMU follow these steps.

To build the firmware, after the following the steps in [3.2.3](#sec3.2.3) run the following
```
docker run -it 9esec/arm-builder:dev
boot
```
# arm64 coreboot Info

## Update submodules
Run
```
./init.sh
```

## Build with Docker

To build the project for the neoverse target do:
```
DOCKER_BUILDKIT=1 docker build --progress=plain -f Dockerfile.neoverse -t 9esec/arm-builder:dev .
```
To build the project for the QEMU SBSA target do:
```
DOCKER_BUILDKIT=1 docker build --progress=plain -f Dockerfile.qemu -t 9esec/arm-builder:dev .
```

Note: coreboot build is tested only on x86 for now. If you are building docker container on ARM platform, please add this line to build x86 docker: `--platform linux/amd64`  

## Run the container
To run the project:
### For Neoverse FVP:
```
make -f Makefile.neoverse docker_neoverse_build
```
To boot the built coreboot firmware run:

```
make -f Makefile.neoverse neoverse_run
```


### For QEMU-SBSA:
```
docker run -it 9esec/arm-builder:dev
boot
```




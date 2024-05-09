#!/bin/sh

### pull required submodules ###

git submodule update --init --recursive

### cherry pick required coreboot patches from gerrit ###

cd repos/coreboot
git checkout 6bb0f8aaa489e5f8da2818069623bc2f202a42ef

# qemu-sbsa patches
git fetch https://review.coreboot.org/coreboot refs/changes/98/74798/15 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/06/79106/9 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/84/78284/11 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/85/78285/8 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/86/79086/9 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/08/79108/6 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/13/78913/5 && git cherry-pick FETCH_HEAD

# Neoverse N2 patches
git fetch https://review.coreboot.org/coreboot refs/changes/04/79404/4 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/24/79524/5 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/72/79972/1 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/73/79973/1 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/50/79450/5 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/06/79406/9 && git cherry-pick FETCH_HEAD
git fetch https://review.coreboot.org/coreboot refs/changes/03/79103/5 && git cherry-pick FETCH_HEAD

# download fedora
cd ../../blobs wget https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/36/Server/aarch64/images/Fedora-Server-36-1.5.aarch64.raw.xz


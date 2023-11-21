#!/bin/bash

# Ubuntu 22.04

# 0. check nvidia driver error
# https://forums.developer.nvidia.com/t/failed-to-initialize-nvml-driver-library-version-mismatch/190421
# https://github.com/Pardus-Linux/Packages/blob/master/hardware/graphics/nvidia-xconfig/files/nvidia-bug-report.sh

# 1. remove nvidia pkg
apt purge "nvidia*"

# 2. add respo

## https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html
apt-get install -y linux-headers-$(uname -r)
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb
dpkg -i cuda-keyring_1.0-1_all.deb
apt-get update

# 3. install driver and
apt-get install -y nvidia-driver-545
apt-get install -y nvidia-utils-545
apt-get install -y cuda-toolkit-12-3
apt-get install -y nvidia-container-toolkit

# 4. reload driver
reboot

# 5. settinno-cgroups = false
vim /etc/nvidia-container-runtime/config.toml


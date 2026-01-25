#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y \
    btop \
    binutils \
    gcc \
    libgcc \
    libgda \
    libgda-sqlite \
    rpmdevtools \
    smartmontools \
    tmux \
    waydroid \
    xz

## Personalize services 
systemctl disable --now podman.socket
systemctl disable --now podman.service
systemctl --user disable --now podman.socket
systemctl --user disable --now podman.service
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

# install homebrew

# Note: This file is breaking our build because our original script must look for brew on path first
# eval "$(curl -fsSL "https://raw.githubusercontent.com/andrepg/dotfiles/refs/heads/main/distro-setup/brew.sh")"
# eval "$(curl -fsSL 'https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh')"

# # install oh-my-bash
# eval "$(curl -fsSL "https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh")"


## Personalize services 
systemctl disable --now podman.socket
systemctl disable --now podman.service
systemctl --user disable --now podman.socket
systemctl --user disable --now podman.service

## GNOME Extensions

# AlphabeticalAppGrid@stuarthayhurst
# app-hider@lynith.dev
# appindicatorsupport@rgcjonas.gmail.com
# Bluetooth-Battery-Meter@maniacx.github.com
# caffeine@patapon.info
# copyous@boerdereinar.dev
# dash-to-dock@micxgx.gmail.com
# gsconnect@andyholmes.github.io
# junk-notification-cleaner@murar8.github.com
# luminus-desktop@dikasp.gitlab
# nightthemeswitcher@romainvigier.fr
# no-overview@fthx
# search-light@icedman.github.com
# tilingshell@ferrarodomenico.com
# user-theme@gnome-shell-extensions.gcampax.github.com
# xwayland-indicator@swsnr.de

# Remove from /usr/share/gnome-shell/extensions
rm -rf /usr/share/gnome-shell/extensions/background-logo@fedorahosted.org
rm -rf /usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com

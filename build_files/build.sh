#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y \
    akmods \
    btop \
    binutils \
    gcc \
    libgcc \
    libgda \
    libgda-sqlite \
    rpmdevtools \
    smartmontools \
    tmux \
    tailscale \
    waydroid \
    xz

# install homebrew
eval "$(curl -fsSL "https://raw.githubusercontent.com/andrepg/dotfiles/refs/heads/main/distro-setup/brew.sh")"

# install oh-my-bash
eval "$(curl -fsSL "https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh")"

# install VSCode
eval "$(curl -fsSL "https://raw.githubusercontent.com/andrepg/supercow/refs/heads/main/vscode-updater.sh")"

## Instal Brew packages
brew install \
    composer \
    docker-compose \
    git \
    gh \
    just \
    node \
    shellcheck \
    yarn \
    yarn-completion

## Check if we can install prime-tools

## Flatpak drivers and utils
flatpak install --system --noninteractive --assumeyes \
    org.freedesktop.Platform \
    org.freedesktop.Platform.Compat \
    org.freedesktop.Platform.codec-extra \
    org.freedesktop.Platform.ffmpeg-full \
    org.freedesktop.Platform.GL.default \
    org.freedesktop.Platform.GL32.default \
    org.freedesktop.Platform.VAAPI.Intel \
    org.freedesktop.Platform.VAAPI.nvidia \
    org.freedesktop.Platform.openh264 \
    org.freedesktop.Platform.openh265 \
    org.freedesktop.Sdk \
    org.freedesktop.Sdk.Extension.node24 \
    org.freedesktop.Sdk.Extension.rust-stable \
    org.freedesktop.Sdk.Extension.typescript \
    org.gnome.Platform

## Flatpak applications
flatpak install --user --noninteractive --assumeyes \
    com.mattjakeman.ExtensionManager \
    com.github.tchx84.Flatseal \
    io.github.BuddysirJava.SSH-Studio \
    io.github.flattool.Warehouse \
    io.github.getnf.embellish \
    it.mijorus.GearLever \
    it.mijorus.smile \
    org.libreoffice.LibreOffice \
    org.gnome.font-viewer \
    org.gnome.gitlab.cheywood.Buffer \
    org.gnome.World.PikaBackup

## Personalize services 
systemctl disable --now podman.socket
systemctl disable --now podman.service

systemctl --user disable --now org.gnome.SettingsDaemon.Smartcard.service
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

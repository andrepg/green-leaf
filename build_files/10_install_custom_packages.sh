#!/bin/bash

set -ouex pipefail

# Flatpak drivers and utils
#
## These packages should act system-wide to provide codecs and
## tools to handle games, videos and music correctly. Every 
## time that we miss some codec from the system, it should be 
## installed here to be available to all users without troubles
flatpak install flathub --or-update --system --noninteractive --assumeyes \
    org.freedesktop.Platform/x86_64/25.08 \
    org.freedesktop.Platform.codecs-extra \
    org.freedesktop.Platform.ffmpeg-full/x86_64/23.08 \
    org.freedesktop.Platform.GL.default/x86_64/25.08 \
    org.freedesktop.Platform.GL32.default/x86_64/25.08 \
    org.freedesktop.Platform.VAAPI.Intel/x86_64/25.08  \
    org.freedesktop.Platform.VAAPI.nvidia/x86_64/25.08 \
    org.freedesktop.Platform.VulkanLayer.gamescope/x86_64/25.08 \
    org.freedesktop.Platform.VulkanLayer.OBSVkCapture/x86_64/25.08 \
    org.freedesktop.Platform.openh264/x86_64/2.5.1 \
    org.freedesktop.Sdk/x86_64/25.08 \
    org.freedesktop.Sdk.Extension.node24/x86_64/25.08 \
    org.freedesktop.Sdk.Extension.rust-stable/x86_64/25.08 \
    org.freedesktop.Sdk.Extension.typescript/x86_64/25.08 \
    org.gnome.Platform/x86_64/49 \
    org.gnome.Sdk/x86_64/49

## Flatpak applications
#
# These are the main Flatpak applications available to the main user. 
# They should serve a higher purpose of provide a customized environment
# based on the Creator's own need of system administration. They include:
# - SSH management tool
# - Flatpak and AppImage management tools (such as Embellish and Gear Lever)
# - Backup and Maintenance tools 
# - A bunch of extra companions to work better
flatpak install flathub --or-update --user --noninteractive --assumeyes \
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

# Instal Brew packages
/home/linuxbrew/.linuxbrew/bin/brew install \
    composer \
    docker-compose \
    git \
    gh \
    just \
    node \
    shellcheck \
    yarn \
    yarn-completion

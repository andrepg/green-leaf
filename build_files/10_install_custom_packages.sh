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
    org.freedesktop.Platform.ffmpeg-full \
    org.freedesktop.Platform.GL.default \
    org.freedesktop.Platform.GL32.default \
    org.freedesktop.Platform.GStreamer.openmpt \
    org.freedesktop.Platform.VAAPI.Intel \
    org.freedesktop.Platform.VAAPI.nvidia \
    org.freedesktop.Platform.VulkanLayer.gamescope \
    org.freedesktop.Platform.VulkanLayer.OBSVkCapture \
    org.freedesktop.Platform.openh264 \
    org.freedesktop.Platform.openh265 \
    org.freedesktop.Sdk \
    org.freedesktop.Sdk.Extension.node24 \
    org.freedesktop.Sdk.Extension.rust-stable \
    org.freedesktop.Sdk.Extension.typescript \
    org.gnome.Platform \
    org.gnome.Sdk

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

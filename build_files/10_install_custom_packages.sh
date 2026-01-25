#!/bin/bash

set -ouex pipefal

## Instal Brew packages
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

## Check if we can install prime-tools

## Flatpak drivers and utils
flatpak install flathub --or-update --system --noninteractive --assumeyes \
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
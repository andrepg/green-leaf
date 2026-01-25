#!/bin/bash

set -ouex pipefail

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

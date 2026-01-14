#!/bin/bash

set -ouex pipefail

# install homebrew
eval $(curl -fsSL https://raw.githubusercontent.com/andrepg/dotfiles/refs/heads/main/distro-setup/brew.sh)

# install oh-my-bash
eval $(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)

# install VSCode
eval $(curl -fsSL https://raw.githubusercontent.com/andrepg/supercow/refs/heads/main/vscode-updater.sh)
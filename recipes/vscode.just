#!/usr/bin/env -S just --justfile

## ~ VSCode installation management recipe
##
## We choose to put this as a JUST recipe to allow easy upgrade and removal 
## since we are using a custom path inside user folder and not system-wide
## installation inside the immutable container image.

# Install VSCode with custom script
[group('vscode')]
@install:
    echo "Installing VSCode..."
    eval "$(curl -fsSL "https://raw.githubusercontent.com/andrepg/supercow/refs/heads/main/vscode-updater.sh")"    

# Remove VSCode and keep user data
[group('vscode')]
@uninstall:
    echo "Removing VSCode..."
    rm -rf $HOME/.var/app/vscode
    rm -r $HOME/.local/share/applications/vscode.desktop
    update-desktop-database

# Remove VSCode and all user data
[group('vscode')]
@remove-data: uninstall
    echo "Removing VSCode user data..."
    rm -rf $HOME/.config/Code 

# Upgrade VSCode (alias for install)
alias upgrade := install
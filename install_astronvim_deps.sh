#!/bin/bash

# Define dependencies for Arch Linux
arch_dependencies=(unzip ttf-0xproto-nerd go)

# Define dependencies for Ubuntu 22.04
ubuntu_dependencies=()

# Install dependencies on Arch Linux
install_arch_dependencies() {
    echo "Installing dependencies for Arch Linux..."
    sudo pacman -Syu --noconfirm "${arch_dependencies[@]}"
}

# Install dependencies on Ubuntu 22.04
install_ubuntu_dependencies() {
    echo "Installing dependencies for Ubuntu 22.04..."
    sudo apt update
    sudo apt install -y "${ubuntu_dependencies[@]}"
}

# Detect the distribution
if [ -f /etc/arch-release ]; then
    install_arch_dependencies
elif [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "ubuntu" ] && [ "$VERSION_ID" = "22.04" ]; then
        install_ubuntu_dependencies
    else
        echo "Unsupported Ubuntu version. Only 22.04 is supported."
        exit 1
    fi
else
    echo "Unsupported Linux distribution."
    exit 1
fi

echo "Dependencies installed successfully."

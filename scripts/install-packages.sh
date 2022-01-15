#!/bin/bash

# Requires sudo
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

echo "======> Installing Official Packages"
echo

# --noconfirm is used to select all packages from groups
pacman -Sy --needed $(<packages.txt)

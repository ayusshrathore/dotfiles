#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

# Bluetooth Configuration
cp -fv main.conf /etc/bluetooth/

# Start Network Manager
systemctl enable NetworkManager

# Set time-date
timedatectl set-timezone 'Asia/Kolkata'
timedatectl set-ntp true

# Pacman Configuration
cp -fv pacman.conf /etc/
cp -fv mirrorlist /etc/pacman.d/

mkinitcpio -p linux
localectl set-locale LANG=en_US.UTF-8

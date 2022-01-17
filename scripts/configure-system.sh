#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

# running commands to configure the system
cp main.conf /etc/bluetooth/
systemctl enable NetworkManager
timedatectl set-ntp true

# Pacman Conf
cp pacman.conf /etc/

mkinitcpio -p linux

localectl set-locale LANG=en_US.UTF-8

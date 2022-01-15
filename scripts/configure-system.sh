#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

# running commands to configure the system
printf "[Policy]\nAutoEnable=true" > /etc/bluetooth/main.conf
systemctl enable NetworkManager
systemctl enable bluetooth
timedatectl set-ntp true

mkinitcpio -p linux

localectl set-locale LANG=en_US.UTF-8

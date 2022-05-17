#!/bin/bash

echo
echo "======> Installing Yay"
echo
cd
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

echo
echo "======> Installing AUR Packages"
echo
yay -Y --devel --combinedupgrade --batchinstall --nodiffmenu --save
yay -S \
	autotiling-rs \
	google-chrome \
	nerd-fonts-jetbrains-mono \
	ponymix \
	spotify \
	sway-audio-idle-inhibit-git \
	ttf-font-logos \
	ttf-icomoon-feather \
	visual-studio-code-bin

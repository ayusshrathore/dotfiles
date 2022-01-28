#!/bin/bash

echo
echo "======> Installing Yay"
echo
cd ${HOME}
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

echo
echo "======> Installing AUR Packages"
echo
yay -Y --devel --combinedupgrade --batchinstall --save
yay -S \
	7-zip-bin \
	google-chrome \
	nerd-fonts-jetbrains-mono \
	pfetch \
	ponymix \
	protonvpn-cli \
	python-proton-client \
	python-protonvpn-nm-lib \
	spicetify-cli \
	spotify \
	spotify-adblock \
	sway-audio-idle-inhibit-git \
	swaylock-effects \
	ttf-font-logos \
	visual-studio-code-bin

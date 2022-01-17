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
	autotiling \
	google-chrome \
	nerd-fonts-jetbrains-mono \
	pfetch \
	protonvpn-cli \
	python-proton-client \
	python-protonvpn-nm-lib \
	spicetify-cli \
	spotify \
	spotify-adblock \
	sway-audio-idle-inhibit-git \
	ttf-font-logos \
	visual-studio-code-bin

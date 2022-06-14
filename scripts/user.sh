#!/bin/bash

if [ "$EUID" -eq 0 ]
    then echo "Do not run as root"
        exit
fi

mkdir -p $HOME/.config/

echo
echo "======> Installing ZSH-Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.config/zsh/zsh-auto
git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.config/zsh/zsh-syntax

mkdir -p $HOME/.local/share/

echo "======> Installing Inter font"
echo
git clone https://github.com/ayush-rathore/inter-nerd-font $HOME/.local/share/fonts/Inter

echo "======> Copying dotfiles"
echo
cp -frv \
	../.zshenv \
	$HOME/

cp -frv \
	../.config/* \
	$HOME/.config

echo "======> Dotfiles copied!"

echo "======> Installing GTK theme"
mkdir -p $HOME/.themes
mkdir tmp && cd tmp
git clone https://github.com/Manas140/paradise.git && cd paradise
./install.sh -d
rm -rf tmp

echo "======> Copying wallpapers"
cd
mkdir -p Pictures
cd Pictures
git clone https://gitlab.com/freaker/wallpapers Wallpapers

#!/bin/bash

if [ "$EUID" -eq 0 ]
    then echo "Do not run as root"
        exit
fi

echo
echo"======> Install ZSH-Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/.config/zsh/zsh-auto
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${HOME}/.config/zsh/zsh-syntax

echo "======> Copying config files"
echo

mkdir -p ${HOME}/.config

cp -frv \
	../.zshrc \
	${HOME}/

cp -frv \
	../micro \
	../fontconfig \
	../gtk-3.0 \
	../lsd \
	../mpv \
	../neofetch \
	../zsh \
	../spicetify \
	../starship.toml \
	${HOME}/.config/

echo "======> Dotfiles copied!"

#!/bin/bash

if [ "$EUID" -eq 0 ]
    then echo "Do not run as root"
        exit
fi

echo
echo "======> Installing ZSH-Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/.config/zsh/zsh-auto
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${HOME}/.config/zsh/zsh-syntax

echo "======> Installing Inter font"
echo
mkdir -p $HOME/.local/share/
git clone https://github.com/ayush-rathore/inter-nerd-font $HOME/.local/share/fonts/

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

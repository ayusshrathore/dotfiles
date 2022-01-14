# Exec Sway
[ "$(tty)" = "/dev/tty1" ] && exec sway

# Code Editor for Expo
export REACT_EDITOR=code

# oh-my-zsh
export ZSH="/home/$USER/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Micro
export MICRO_TRUECOLOR=1

# Starship
eval "$(starship init zsh)"

# Aliases

	# Clear console
	alias c='clear'

	# Pacman & Yay
	alias \
		install='sudo pacman -S' \
		remove='sudo pacman -R' \	
	 	apps='sudo pacman -Qe' \
	 	update='yay -Syu && yay -Sc' \
        clean='sudo pacman -Qdtq | sudo pacman -Rs -'

	# Mounting Google Drive
	alias mount='rclone mount Ayush: ~/drive'

	# VS Code
	alias code='code .'

	# Proton-VPN
	alias \ 
		connect='protonvpn-cli connect' \
		disconnect='protonvpn-cli disconnect'

	# Git
	alias \
		gpo='git push origin' \
		gcm='git checkout main' \
		grao='git remote add origin' \
		gmnf='git merge --no-ff'

	# Sync Swayland changes with Git Repo
    alias ss='cp -r .config/sway .config/waybar .config/alacritty .config/swaylock .config/mako .config/wofi GitHub/swayland'

	# Network Manager
    alias \
        nmcon='nmcli device wifi connect' \
        nmls='nmcli device wifi list' \
        nmst='nmcli device status'

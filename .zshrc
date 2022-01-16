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

# llama
alias ll='llama'
export EDITOR=micro

# Aliases

	# Clear console
	alias c='clear'

	# ls commands
	alias ls='lsd'
	alias l='ls -l'
	alias la='ls -a'
	alias lla='ls -la'
	alias lt='ls --tree'

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
		gm='git merge' \
		gmnf='git merge --no-ff'

	# Network Manager
    alias \
        nmcon='nmcli device wifi connect' \
        nmls='nmcli device wifi list' \
        nmst='nmcli device status'

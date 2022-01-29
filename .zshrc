# Exec Sway
[ "$(tty)" = "/dev/tty1" ] && exec sway

XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway

# Shell Options
setopt autocd
setopt APPEND_HISTORY 
setopt INC_APPEND_HISTORY 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
setopt COMPLETE_IN_WORD 
setopt ALWAYS_TO_END            
setopt PROMPT_SUBST
unsetopt MENU_COMPLETE
setopt AUTO_MENU

# Source plugins
source ~/.config/zsh/zsh-auto/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax/zsh-syntax-highlighting.zsh

# Source Other files
source ~/.config/zsh/functions
source ~/.config/zsh/settings.zsh

# ZSH History
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

# Code Editor for Expo
export REACT_EDITOR=code

# Micro
export MICRO_TRUECOLOR=1

# Starship
eval "$(starship init zsh)"

#Neofetch on startup
neofetch --ascii ~/.config/neofetch/arch

# llama
# alias ll='llama'
function fm() {
  cd "$(llama "$@")"
}

export EDITOR=micro

# Aliases

	# Clear console
	alias c='clear'

	# Up a directory
	alias ..='cd ..'

	# ls commands
	alias ls='lsd'
	alias l='ls -l'
	alias la='ls -a'
	alias lla='ls -la'
	alias lt='ls --tree'

	# Pacman & Yay
	alias \
		install='sudo pacman -S' \
		remove='sudo pacman -Rns' \
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
		ga='git add' \
		gd='git diff' \
		gs='git status' \
		gcm='git commit -m' \
		gp='git push' \
		gl='git pull' \
		gc='git clone' \
		gpo='git push origin' \
		gco='git checkout' \
		gcom='git checkout main' \
		grao='git remote add origin' \
		gm='git merge' \
		gmnf='git merge --no-ff' \
		gr='git restore' \
		grs='git restore --staged'

	# Network Manager
    alias \
        nmcon='nmcli device wifi connect' \
        nmls='nmcli device wifi list' \
        nmst='nmcli device status'

# Exporting variables
export TERMINAL=alacritty
export BROWSER=google-chrome-stable
export EDITOR=micro
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# XDG base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export ANDROID_SDK_HOME="$HOME/.config/android"
export GOPATH="$HOME/.local/share/go"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export CARGO_HOME="$HOME/.local/share/cargo"

# zsh config dir
export ZDOTDIR="$HOME/.config/zsh"

# ZSH History
export HISTFILE="$XDG_CONFIG_HOME/zsh/history"
export HISTSIZE=1000
export SAVEHIST=1000

# Micro
export MICRO_TRUECOLOR=1

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

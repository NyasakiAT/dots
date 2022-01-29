export ZSH="/home/mwalk/.oh-my-zsh"
plugins=(
	colorize
)

source $ZSH/oh-my-zsh.sh

#-------------------------
#--- GENERATED CONFIG
#-------------------------
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
zstyle :compinstall filename '/home/mwalk/.zshrc'
autoload -Uz compinit
compinit

#-------------------------
#--- PROMPT
#-------------------------
PROMPT="%n@%m  "
RPROMPT="%~"

#-------------------------
#--- ALIASES
#-------------------------
alias pls='sudo'
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Rns'

#-------------------------
#--- ENV VARS
#-------------------------
export EDITOR=nvim

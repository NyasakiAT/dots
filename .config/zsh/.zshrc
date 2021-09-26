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


#          _
#         | |
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|
#
# # # # # # # # # # # # #
#  (￣▽￣)ノ            #
#        It just werks  #

autoload -U colors && colors
# Prompt
PS1="%B%{$fg[blue]%}ご%{$reset_color%}%b "

# KEWL PROGRAM ALIASES
alias v="nvim"
alias vim="nvim"
alias tcli="tremc"
# only apply ls->lsd aliases if in interactive mode
if [[ $- == *i* ]]; then
   alias ls='lsd'
   alias l='ls -F'
   alias la="ls -FA"
fi
# Yay
alias yi="yay -S"
alias yr="yay -Rns"
alias yu="yay -Syu"
# pacman
alias pi="sudo pacman -S"
alias pr="sudo pacman -Rns"
alias pu="sudo pacman -Syu"
# screen and weechat
alias wee="weechat"
# screen connect
alias sc="screen -rd"
# screen kill
alias sk="screen -X -S"
up () {
    curl -F"file=@$1" "http://0x0.st"
    return 0
}
# Common directories and files
# school work
alias sw=~/Hitoha/Documents/school
# personal go project dir
alias gp=~/go/src/github.com/trigex
# scripts
alias s=~/.scripts/

# config aliases
# bspwmrc
alias bprc="$EDITOR ~/.config/bspwm/bspwmrc"
# sxhkdrc
alias sxrc="$EDITOR ~/.config/bspwm/sxhkdrc"
# newsboat urls
alias nbu="$EDITOR ~/.config/newsboat/urls"
# polybar
alias pbc="$EDITOR ~/.config/polybar/config"
# zshrc
alias zrc="$EDITOR ~/.config/zsh/.zshrc"
# profile config
alias pf="$EDITOR ~/.profile"
# neovim config
alias vinit="$EDITOR ~/.config/nvim/init.vim"
# History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
alias HIST=$HISTFILE

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
setopt COMPLETE_ALIASES

# autocd
setopt autocd

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

# Aliases
alias v="nvim"
alias vtutor="nvim /usr/share/nvim/runtime/tutor/en/vim-01-beginner.tutor"
alias 2x="waifu2x-converter-cpp"
alias tcli="transmission-remote-cli"
# Xbps
alias xbi="sudo xbps-install -S"
alias xbu="sudo xbps-install -Su"
alias xbs="xbps-query -Rs"
alias xbr="sudo xbps-remove -R"
# helpful commands
alias getfnt="fc-list | cut -f2 -d: | sort -u"
alias goland="wmname LG3D && goland.sh"

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
# zshenv
alias zenv="$EDITOR ~/.config/zsh/.zshenv"
# profile config
alias pf="$EDITOR ~/.profile"

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

# autocd
setopt autocd

# Syntax highlighting
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U colors && colors

PS1="%B%{$fg[red]%} %{$reset_color%}%b "
alias v="nvim"
alias vim="nvim"
alias vi="nvim"
alias l="ls -al"

sl=/usr/local/suckless
alias dwm=$sl/dwm
alias st=$sl/st
alias c="make && doas make install"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt autocd

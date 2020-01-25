# prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%} %{$reset_color%}%b "

# aliases
alias v="nvim"
alias l="ls -alh"
# oh my god it's so hard to type pkg I'm shitting myself
alias pki="doas pkg install"
alias pkr="doas pkg remove"
alias pks="pkg search"
alias pko="portmaster --list-origins | sort -d"
# sometimes I slip
alias lsblk="geom disk list"
alias mpv="mpv -vo=gpu"
alias sudo="doas"

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# layze
setopt autocd

GPG_TTY=$(tty)
export GPG_TTY

# plugins
source ~/.local/bin/antigen.zsh
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

# autocomplete
source ~/.local/bin/complete.zsh

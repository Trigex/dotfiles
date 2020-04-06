# color definitions
autoload -U colors && colors

# le vim in shell
if [ "$TERM" != "eterm-color" ]; then
	bindkey -v

	bindkey '^P' up-history
	bindkey '^N' down-history
	bindkey '^?' backward-delete-char
	bindkey '^h' backward-delete-char
	bindkey '^w' backward-kill-word
	bindkey '^r' history-incremental-search-backward

	function zle-line-init zle-keymap-select {
	    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
	    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
	    zle reset-prompt
	}

	zle -N zle-line-init
	zle -N zle-keymap-select
	export KEYTIMEOUT=1
fi

# aliases
alias vi="nvim"
alias v="nvim"
alias vim="nvim"
# editing aliases for commonly tweaked configs
alias vzrc="$EDITOR ~/.config/zsh/.zshrc"
alias vzenv="$EDITOR ~/.config/zsh/.zshenv"
alias vdwm="$EDITOR ~/.local/suckless/dwm/config.h"
alias vst="$EDITOR ~/.local/suckless/st/config.h"
alias vbar="$EDITOR ~/.local/bin/dwm-bar"
alias vpl="doas $EDITOR /usr/local/etc/poudriere.d/port-list"
alias vnv="$EDITOR ~/.config/nvim/init.vim"
alias vhd="$EDITOR ~/.config/sxhkd/sxhkdrc"

# prompt
PS1="[ %{$fg[red]%}%~%{$reset_color%} ] %{$fg[green]%}$%{$reset_color%} "

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# plugins
source $HOME/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

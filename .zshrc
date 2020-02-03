autoload -U colors && colors
# vim editing (not used when in emacs)
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

# prompt
PS1="%B%{$fg[red]%} %{$reset_color%}%b "
# different prompt for ttys
case $(tty) in /dev/ttyv[0-8]*)
    PS1="%B%{$fg[green]%}$ %{$reset_color%}%b" ;;
esac
# different prompt for emacs
if [ "$TERM" = "eterm-color" ]; then
	PS1="%B%{$fg[purple]%}%{$reset_color%}%b "
fi

# aliases
alias po="doas poudriere options -j $POUDRIERE_JAIL"
alias pb="doas poudriere bulk -j $POUDRIERE_JAIL"
alias vi="$EDITOR"
alias vim="$EDITOR"
alias v="$EDITOR"

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# fuck typing in cd
setopt autocd

# plugins
source ~/.local/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.local/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# lovely greetings!
if [ "$TERM" != "eterm-color" ]; then
	greet
fi

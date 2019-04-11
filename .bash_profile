export BROWSER="firefox"
export READER="zathura"
export EDITOR="vim"
export TERMINAL="st"
export PATH="$PATH:$HOME/.scripts"

[ -f ~/.bashrc ] && source ~/.bashrc

# startx if not i3 is not already running
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi

#!/bin/sh
#                    __ _ _
#                   / _(_) |
#   _ __  _ __ ___ | |_ _| | ___
#  | '_ \| '__/ _ \|  _| | |/ _ \
# _| |_) | | | (_) | | | | |  __/
#(_) .__/|_|  \___/|_| |_|_|\___|
#  | |
#  |_|
#
# ( ` ω ´ )

# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CURRENT_DESKTOP="bspwm"
# default programs
export SHELL="zsh"
export PAGER="less"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export ALTBROWSER="surf"
export READER="zathura"
# Japanese input
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
# go and my shell scripts; all in the world I need
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export PATH="$PATH:$HOME/.scripts:$GOBIN:/opt/GoLand-2019.2.3/bin"
# wine
export WINEARCH=win32
export WINEPREFIX="$HOME/.win32"
export WINEDLLOVERRIDES=mscoree=d;mshtml=d
# gtk
export GTK_THEME=Materia-dark
export NO_AT_BRIDGE=1
# DEWM
export DOOMWADDIR=$HOME/Games/DOOM_WADS/IWADS

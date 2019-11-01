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
export VISUAL="nvim"
export TERMINAL="st"
export PLAYER="mpv"
export BROWSER="chromium"
export READER="zathura"
# go and my shell scripts; all in the world I need
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export GO111MODULE=auto
export PATH="$PATH:$HOME/.scripts:$GOBIN:$HOME/.dotnet"
# fuck you botnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=$HOME/.dotnet
# DEWM
export DOOMWADDIR=$HOME/Games/DOOM_WADS/IWADS
# weechat
export WEECHAT_HOME=$HOME/.config/weechat

#!/bin/sh
export LANG=en_US.UTF-8
export ENV=$HOME/.zshrc
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null
xrdb -merge $HOME/.Xresources
xidle &
doas ntfs-3g /dev/ada0p5 /media/hitoha
exec bspwm

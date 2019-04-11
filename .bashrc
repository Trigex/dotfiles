# welcome message
figlet moebox -f slant | lolcat
echo -e "\e[3m$(fortune -o)\e[0m"

[[ $- != *i* ]] && return
alias ls='ls --color=auto'
shopt -s autocd # cd into directory by typing directory name

# Prompt
PURPLE=$(tput setaf 5)
RESET=$(tput sgr0)
PS1='\w\[$PURPLE\]  \[$RESET\] '

# aliases
alias v="vim"
alias sv="sudo vim"
alias p="sudo pacman"
alias ytmp3="youtube-dl --extract-audio --audio-format mp3"
alias yt="youtube-dl -f bestvideo"
alias s="ffmpeg -f x11grab -framerate 1 -video_size 1600x900 -i :0.0 -vframes 1"

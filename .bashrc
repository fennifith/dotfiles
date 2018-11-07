#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Prompt colors...
BOLD="$(tput bold)"
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
CYAN="$(tput setaf 6)"
MAG="$(tput setaf 5)"
RESET="$(tput sgr0)"
export PS1='[${BOLD}\u${RESET}-desu ${BOLD}${RED}\W${RESET}]\$ '

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi
# >>> Added by cnchi installer
EDITOR=/usr/bin/nano

export GOPATH="/home/james/go"
export PATH="$PATH:$GOPATH/bin"

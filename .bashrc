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
MAG="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
RESET="$(tput sgr0)"
PS1='${BOLD}${MAG}\W ${CYAN}\$${RESET} '

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi
# >>> Added by cnchi installer
EDITOR=/usr/bin/nano

# Ruby Gems
export GEM_HOME="/home/james/gems"
export PATH="$PATH:$GEM_HOME/bin"

export GOPATH="/home/james/go"
export PATH="$PATH:$GOPATH/bin"

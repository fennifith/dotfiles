#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Prompt colors...
BLD="\[$(tput bold)\]"
BLK="\[$(tput setaf 0)\]"
RED="\[$(tput setaf 1)\]"
GRN="\[$(tput setaf 2)\]"
YEL="\[$(tput setaf 3)\]"
BLU="\[$(tput setaf 4)\]"
MAG="\[$(tput setaf 5)\]"
CYN="\[$(tput setaf 6)\]"
WHT="\[$(tput setaf 7)\]"
LBLK="\[$(tput setaf 8)\]"
LRED="\[$(tput setaf 9)\]"
LGRN="\[$(tput setaf 10)\]"
LYEL="\[$(tput setaf 11)\]"
LBLU="\[$(tput setaf 12)\]"
LMAG="\[$(tput setaf 13)\]"
LCYN="\[$(tput setaf 14)\]"
LWHT="\[$(tput setaf 15)\]"
RESET="\[$(tput sgr0)\]"
export PS1='${LMAG}\u${WHT}@${LCYN}\h${RESET} \$ '

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

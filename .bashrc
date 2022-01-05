#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Escaped ANSI colors...
BOLD="\[\033[1m\]"
BLD="\[\e[21m\]"
BLK="\[\e[30m\]"
RED="\[\e[31m\]"
GRN="\[\e[32m\]"
YEL="\[\e[33m\]"
BLU="\[\e[34m\]"
MAG="\[\e[35m\]"
CYN="\[\e[36m\]"
WHT="\[\e[37m\]"
LBLK="\[\e[90m\]"
LRED="\[\e[91m\]"
LGRN="\[\e[92m\]"
LYEL="\[\e[93m\]"
LBLU="\[\e[94m\]"
LMAG="\[\e[95m\]"
LCYN="\[\e[96m\]"
LWHT="\[\e[97m\]"
RESET="\[\e[0m\]"

# Obtain current git branch
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ];
    then
        if [ ! "$(git diff --name-only)" == "" ]
        then
            echo "[${BRANCH}]* "
        else
            echo "[${BRANCH}] "
        fi
    else
        echo ""
    fi
}

# Custom prompt
export PROMPTCHAR=$'\xE2\x80\xBA'
export PS1="${BOLD}${LMAG}\u${RED}@\h${LRED} \W ${YEL}\`parse_git_branch\`${RESET}\n${LMAG}${PROMPTCHAR} ${LMAG}"
trap 'echo -ne "\e[0m"' DEBUG

if [ -e ~/.bashrc.aliases ]; then
   source ~/.bashrc.aliases
fi
# >>> Added by cnchi installer
EDITOR=/usr/bin/nano

# Ruby Gems
export GEM_HOME="/home/james/gems"
export PATH="$PATH:$GEM_HOME/bin"
export PATH="$PATH:/root/.gem/ruby/2.5.0/bin"
export PATH="$PATH:/home/james/.local/share/gem/ruby/3.0.0/bin"
export PATH="$PATH:/home/james/.gem/ruby/2.6.0/bin"
export PATH="$PATH:/home/james/.gem/ruby/2.5.0/bin"
export PATH="$PATH:/home/james/flutter/bin"
export PATH="$PATH:/home/james/bin"
export PATH="$PATH:/home/james/.local/bin"

export GOPATH="/home/james/go"
export PATH="$PATH:$GOPATH/bin"

export ANDROID_HOME="/home/james/adb"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# Haskell / Cabal install dir
export PATH="$PATH:/home/james/.cabal/bin"

# Yarn install dir
export PATH="$PATH:$(yarn global bin)"

# ----- micro alias -----
# All this really does is set the $TERM variable to something usable.
alias micro="TERM=rxvt-unicode-256color micro"
export MICRO_TRUECOLOR=1

# ----- gcc aliases -----

# gcc  - acts as an alias of gcc; enables all warning flags, treats warnings as
#        errors, and sets the output file to the name of the source file.
#
# Arguments should be passed to this alias after the name of the source file,
# not before it; while gcc doesn't explicitly state it, it does accept the source
# as the first argument, allowing additional arguments to be passed to this alias
# without breaking the format.
#
# Ex:
#   gcc --std=c99 test.c          Creates two binaries, "./--std=c99" and "./test",
#                                 both of which contain the binary of "./test.c".
#
#   gcc test.c --std=c99          Creates one binary, "./test", using c99.
#
gcc() { /usr/bin/gcc $@ -Wall -Werror -o ${1%.*}; }

# gccx - runs gcc (the alias above), then executes the compiled binary.
gccx() { gcc $@ && command $(realpath "${1%.*}"); }

alias ls="ls --color=none -F"

# Dir aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias exa="exa --header"
alias xcopy="xclip -sel clip"
alias xpaste="xclip -o -sel clip"
alias scrot="( cd ~/scrots && scrot --select --delay 2 )"
alias open="xdg-open"

alias owo="tr lr w | tr LR W"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/james/bin/google-cloud-sdk/path.bash.inc' ]; then . '/home/james/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/james/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/home/james/bin/google-cloud-sdk/completion.bash.inc'; fi

# https://stackoverflow.com/questions/64010263/attributeerror-module-importlib-has-no-attribute-util
export CLOUDSDK_PYTHON=python2

# qt settings
unset QT_STYLE_OVERRIDE
export QT_QPA_PLATFORMTHEME=qt5ct

# https://aur.archlinux.org/packages/mesa-git/
export MESA_WHICH_LLVM=1

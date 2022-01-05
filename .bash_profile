#
# ~/.bash_profile
#

# init environment variables
[[ -f ~/.bashrc ]] && . ~/.bashrc

# if this is VT1, start i3
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx /usr/bin/i3
fi

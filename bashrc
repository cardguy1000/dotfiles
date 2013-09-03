# .bashrc
set -o vi
bind -m vi-insert "\C-l":clear-screen
alias cd..='cd ..'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
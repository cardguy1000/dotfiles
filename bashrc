# .bashrc
set -o vi
bind -m vi-insert "\C-l":clear-screen

alias vrc='vim ~/.bashrc'
alias src='. ~/.bashrc'
alias info='info --vi-keys'

#aliases
alias sl=ls
alias ls='ls --color'
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias _="sudo"

alias c='clear'
alias k='clear'
alias cls='clear'

alias edit="$EDITOR"
alias pager="$PAGER"

alias q='exit'

alias irc="$IRC_CLIENT"

alias cd..='cd ..'
alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back
alias cdh='cd /var/www/html'
alias chd='cd /var/www/html'
alias cdd='cd ~/dotfiles'

# Shell History
alias h='history'

# Directory
alias	md='mkdir -p'
alias	rd='rmdir'

#git aliases
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gd='git diff'
alias gdw='git diff master web/master'
alias gs='git status'
alias gc='git commit -v'
alias gb='git branch'
alias gco='git checkout'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gsl="git shortlog -sn"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.mybashrc ]; then
   source ~/.mybashrc
fi
   

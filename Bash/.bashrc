#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# utf-8
export LANG=en_US.UTF-8

# Self made alias'
alias rm="rm -i"
alias mv="mv -i"

# Add ~/.bin to the $PATH
export PATH="~/.bin/:$PATH"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# https://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# Prompt Magic
# where:
# Line 1-- current date and time
# Line 2-- current working directory
# Line 3-- username @ host: console number: # of files in directory total size of directory on disk ->
export PS1="
\[\033[35m\]\$(/bin/date +'%a %d %b %Y  %T %Z')
\[\033[32m\]\w\n\[\033[1;33m\]\u@\h\[\033[1;34m\] -> \[\033[0m\]"
#\[\033[1;36m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\033[1;33m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\033[0m\] -> \[\033[0m\]"

# utf-8
export LANG=en_US.UTF-8

# Self made alias'
alias rm="rm -i"
alias mv="mv -i"

alias ls='ls --color=auto'

# Add ~/.bin to the $PATH
export PATH="~/.bin/:$PATH"

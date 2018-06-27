#set endless history
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
shopt -s histappend

COLOR1="\[\033[01;31m\]"
COLOR2="\[\033[01;34m\]"
COLOR3="\[\033[01;32m\]"
NOCOLOR="\[\033[00m\]"

PS1="$COLOR1\u$COLOR2@$COLOR3\h$NOCOLOR:$COLOR2\w$NOCOLOR\$ "
export EDITOR="vim"

. ~/.bash_aliases
export PATH=~/bin:$PATH

# set endless history
shopt -s histappend
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000

# colored prompt
COLOR1="\[\033[01;31m\]"
COLOR2="\[\033[01;34m\]"
COLOR3="\[\033[01;32m\]"
NOCOLOR="\[\033[00m\]"

PS1="$COLOR1\u$COLOR2@$COLOR3\h$NOCOLOR:$COLOR2\w$NOCOLOR\$ "

# preferred editor
EDITOR="vim"

# source aliases
. $HOME/.bash_aliases

# set GOPATH
GOPATH=$HOME/projects/go
PATH=$GOPATH/bin:$PATH


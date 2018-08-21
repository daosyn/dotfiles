# set endless history
shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000

# colored prompt
COLOR1="\[\033[01;35m\]"
COLOR2="\[\033[01;36m\]"
COLOR3="\[\033[01;34m\]"
NOCOLOR="\[\033[00m\]"

PS1="$COLOR1\u$COLOR2@$COLOR3\h$NOCOLOR[$COLOR2\W$NOCOLOR]: "

# preferred editor
export EDITOR="vim"

# set GOPATH
export GOPATH=$HOME/projects/go
export PATH=$GOPATH/bin:$PATH

# source aliases
. $HOME/.bash_aliases


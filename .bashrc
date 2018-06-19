#set endless history
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
shopt -s histappend

PS1='\[\033[01;31m\]\u\[\033[01;34m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export EDITOR="vim"

. ~/.bash_aliases
export PATH=~/bin:$PATH

#set endless history
HISTCONTROL=ignoreboth:erasedups
HISTFILESIZE=
HISTSIZE=
shopt -s histappend

PS1='\[\033[01;31m\]\u\[\033[01;34m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

. ~/.bash_aliases

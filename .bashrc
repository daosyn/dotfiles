# set endless history
shopt -s histappend
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000

# git support
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWCOLORHINTS=true
. $HOME/.git-prompt

# colored prompt
RED="\[\e[31m\]"
YELLOW="\[\e[33m\]"
MAGENTA="\[\e[35m\]"
NOCOLOR="\[\e[00m\]"

PS1="$RED\h$YELLOW [\W]$MAGENTA\$(__git_ps1 ' (%s)')$NOCOLOR: "

# preferred editor
export EDITOR="vim"

# set GOPATH
export GOPATH=$HOME/projects/go

# source aliases
. $HOME/.bash_aliases


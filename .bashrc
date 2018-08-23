# set endless history
shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000

# git support
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
. $HOME/.git-prompt

# colored prompt
RED="\[\033[01;31m\]"
MAGENTA="\[\033[01;35m\]"
YELLOW="\[\033[01;93m\]"
NOCOLOR="\[\033[00m\]"

PS1="$RED\h$YELLOW [\W]$MAGENTA\$(__git_ps1 ' (%s)')$NOCOLOR: "

# preferred editor
export EDITOR="vim"

# set GOPATH
export GOPATH=$HOME/projects/go
export PATH=$GOPATH/bin:$PATH

# source aliases
. $HOME/.bash_aliases


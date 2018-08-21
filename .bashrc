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
COLOR1="\[\033[01;35m\]"
COLOR2="\[\033[01;36m\]"
COLOR3="\[\033[01;34m\]"
NOCOLOR="\[\033[00m\]"

PS1="$COLOR1\u$COLOR2@$COLOR3\h$NOCOLOR [$COLOR2\W$NOCOLOR]\$(__git_ps1 ' (%s)'): "

# preferred editor
export EDITOR="vim"

# set GOPATH
export GOPATH=$HOME/projects/go
export PATH=$GOPATH/bin:$PATH

# source aliases
. $HOME/.bash_aliases


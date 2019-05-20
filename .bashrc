# sentimentality
if [ ! -f "$HOME/.nickname" ]; then
    read -p "give your machine a name: " name
    echo "export NICKNAME=\"$name\"" > $HOME/.nickname
fi
. $HOME/.nickname

# set endless history
shopt -s histappend
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000

# git support
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWCOLORHINTS=true
. $HOME/.gitprompt

# colored prompt
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
MAGENTA="\[\e[35m\]"
NOCOLOR="\[\e[39m\]"

PS1="$RED\u\
$MAGENTA@\
$YELLOW$NICKNAME\
$BLUE[\W]\
$GREEN\$(__git_ps1 '(%s)')\
$NOCOLOR: "

# preferred editor
export EDITOR="vim"

# set GOPATH
export GOPATH=$HOME/projects/go
export PATH=$HOME/.local/bin:$PATH:/usr/local/go/bin:$GOPATH/bin

# source aliases
. $HOME/.aliases

# set wallpaper
export WALLPAPER=$HOME/wallpapers/colors.jpg

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye
gpgconf --launch gpg-agent

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

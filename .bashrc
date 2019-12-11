# sentimentality
if [ ! -f "$HOME/.nickname" ]; then
    read -p "give your machine a name: " name
    echo "export NICKNAME=\"$name\"" > $HOME/.nickname
fi
. $HOME/.nickname
. $HOME/.aliases
export EDITOR="vim"

# history
shopt -s cmdhist
shopt -s histappend
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='history:ll:ls'
HISTFILESIZE=
HISTSIZE=
PROMPT_COMMAND='history -a'

# git
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
. $HOME/.gitprompt

# prompt
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
GREY="\[\033[0;37m\]"
NOCOLOR="\[\033[0;38m\]"

PS1="$YELLOW[\
$RED\u$YELLOW@$RED$NICKNAME\
$YELLOW:$BLUE\W\
$MAGENTA\$(__git_ps1 ' %s')\
$YELLOW]\
$RED\$ $NOCOLOR"

# languages
export GOPATH=$HOME/projects/go
export PATH=$HOME/.local/bin:$PATH:/usr/local/go/bin:$GOPATH/bin
if [ -f "$HOME/.javahome" ]; then
    . $HOME/.javahome
fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# gpg
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye
gpgconf --launch gpg-agent

# set wallpaper
export WALLPAPER=$HOME/wallpapers/colors.jpg


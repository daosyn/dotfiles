# ~/.profile: executed by the command interpreter for login shells.

# ignore duplicate additions to $PATH
case ":$PATH:" in
    *":$new_entry:"*) :;; # already there
    *) PATH="$new_entry:$PATH";;
esac

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set GOPATH
export GOPATH=$HOME/projects/go
export PATH=$PATH:$GOPATH/bin

# preferred editor
export EDITOR="vim"

#set endless history
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000


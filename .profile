# ~/.profile: executed by the command interpreter for login shells.

# ignore duplicate additions to PATH
case ":$PATH:" in
    *":$new_entry:"*) :;; # already there
    *) PATH="$new_entry:$PATH";;
esac

# set PATH so it includes HOME bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH, MANPATH, etc., for homebrew
if [ -e /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# nvm
export NVM_DIR=~/.nvm
if type brew &> /dev/null; then
    source $(brew --prefix nvm)/nvm.sh
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi


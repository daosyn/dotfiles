# ~/.profile: executed by the command interpreter for login shells.

# ignore duplicate additions to PATH
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

# set PATH so it includes HOME bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# autostart x
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi

# set PATH, MANPATH, etc., for homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# gpg
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye
gpgconf --launch gpg-agent


# git
alias gitsignall='git rebase -i --root --exec "git commit --amend --no-edit --no-verify -S"'
alias gitsubup='git submodule foreach git pull origin master'

# ls
alias ll='ls -lh'
alias ls='ls --color=auto'

# shortcuts
alias godaosyn='cd $GOPATH/src/github.com/daosyn'
alias projects='cd $HOME/projects'

# specifics
alias search='history | grep'
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'


# dotfiles

1. `git clone --bare https://github.com/daosyn/dotfiles $HOME/.cfg`
2. `alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
3. `config checkout`
4. `config config --local status.showUntrackedFiles no`
5. `. $HOME/.bashrc`

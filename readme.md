1. `git clone --bare https://github.com/daosyn/dotfiles $HOME/.cfg`
2. `cd $HOME/.cfg`
3. `git --work-tree=$HOME checkout`
4. `. $HOME/.bashrc`
5. `config config --local status.showUntrackedFiles no`


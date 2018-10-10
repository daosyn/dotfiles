1. `git clone --bare git@github.com:daosyn/dotfiles.git $HOME/.cfg`
2. `cd $HOME/.cfg`
3. `git --work-tree=$HOME checkout`
4. `. $HOME/.bashrc`
5. `config config --local status.showUntrackedFiles no`


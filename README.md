How to install:
===

```
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vim/vimrc ~/.vimrc
ln -s ~/dotfiles/.vim/gvimrc ~/.gvimrc

ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/profile ~/.profile

cd ~/.vim
git submodule update --init --recursive
```

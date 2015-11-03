How to install:
===

```
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vim/vimrc ~/.vimrc
ln -s ~/dotfiles/.vim/gvimrc ~/.gvimrc

ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/profile ~/.profile
ln -s ~/dotfiles/gitconfig ~/.gitconfig

cd ~/.vim
git submodule update --init --recursive
```

To install custom oh-my-zsh theme:

```
mkdir -p ~/.oh-my-zsh/custom/themes/
ln -s ~/dotfiles/pygmalion-runfor.zhs-theme ~/.oh-my-zsh/custom/themes/pygmalion-runfor.zsh-theme
```

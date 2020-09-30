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

Install Vundle Plugin manager for Vim:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim .
```

Inside vim call command `:PluginInstall`

To install custom oh-my-zsh theme:

```
mkdir -p ~/.oh-my-zsh/custom/themes/
ln -s ~/dotfiles/pygmalion-runfor.zhs-theme ~/.oh-my-zsh/custom/themes/pygmalion-runfor.zsh-theme
```

To install powerline fonts:

```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

Choose `Meslo LG M DZ for Powerline` font int iTerm Preferences -> Profiles -> Text

Then install [`MaterialDesign` Theme](https://github.com/MartinSeeler/iterm2-material-design)

in iTerm go to Preferences -> Profiles -> Keys:
* Set Left Option Key to `Esc+`
* Set Right Option Key to `Esc+`

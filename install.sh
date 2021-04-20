#!/bin/bash

SYMLINK_LIST="bash_profile
colordiffrc
gitconfig
gitignore_global
gvimrc
inputrc
npmrc
pip
tmux.conf
vim
vimrc
wgetrc
zshrc"

BASE_DIR=$(cd $(dirname $0); pwd)
cd $BASE_DIR

for FILE in $SYMLINK_LIST
do
  rm -rf ~/.$FILE
  ln -s $BASE_DIR/$FILE ~/.$FILE
done

# Nvim config
ln -nfs $BASE_DIR/config ~/.config

# Install the Vim-Plug Plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install NeoVim Plugins
mvim +PlugInstall +qall

# MacDown command line
mkdir ~/bin
ln -s /Applications/MacDown.app/Contents/SharedSupport/bin/macdown ~/bin

exit 0

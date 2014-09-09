#!/bin/bash

cd ~/dotfiles
git submodule init
git submodule update

cd
ln -nfs ~/dotfiles/vimrc ~/.vimrc
ln -nfs ~/dotfiles/vim ~/.vim
ln -nfs ~/gitconfig ~/.gitconfig

exit 0

#!/bin/bash

cd ~/dotfiles
git submodule init
git submodule update

cd
ln -nfs ~/dotfiles/vimrc ~/.vimrc
WORKING_DIR=~/.vim
if [ -d "$WORKING_DIR" ]; then rm -Rf $WORKING_DIR; fi
ln -nfs ~/dotfiles/vim ~/.vim
WORKING_DIR=~/.gitconfig
if [ -d "$WORKING_DIR" ]; then rm -Rf $WORKING_DIR; fi
ln -nfs ~/dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/dotfiles/tmux.conf ~/.tmux.conf

exit 0

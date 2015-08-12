#!/bin/bash

echo "Installing..."

cp vimrc ~/.vimrc
cp -R schema/vim-colors-solarized/colors ~/.vim

if [ ! -d ~/.vim/bundle/ ]
then
    cp -R vim ~/.vim
fi

vim +PluginClean +qall
vim +PluginInstall +qall

echo "Successfully installed"

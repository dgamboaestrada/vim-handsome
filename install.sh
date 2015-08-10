#!/bin/bash

echo "Installing..."

cp -R vim ~/.vim
cp vimrc ~/.vimrc
cp -R schema/vim-colors-solarized/colors ~/.vim

vim +PluginInstall +qall

echo "Successfully installed"

#!/bin/bash

echo "Installing..."

cp vimrc ~/.vimrc
cp -R schema/vim-colors-solarized/colors ~/.vim

if [ ! -d ~/.vim/bundle/Vundle.vim/ ]
then
    cp -R vim ~/.vim
fi

vim +PluginClean +qall
vim +PluginInstall +qall

if [ -d ~/.vim/bundle/Vundle.vim/ ]
then
    echo "----- Vim-awesome updated -----"
else
    echo "----- Successfully installed ------"
fi

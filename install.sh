#!/bin/bash

echo "Installing..."

echo "copy .vimrc..."
rm ~/.vimrc
cp vimrc ~/.vimrc
sleep 3

if [ ! -d ~/.vim/bundle/Vundle.vim/ ]
then
    echo "copy .vim/..."
    if [ ! -d ~/.vim/ ]
    then
        mkdir ~/.vim/
    fi
    if [ ! -d ~/.vim/bundle/ ]
    then
        mkdir ~/.vim/bundle/
    fi
    cp -R vim/bundle/ ~/.vim/
    sleep 3
fi

echo "copy schema..."
if [ ! -d ~/.vim/colors/ ]
then
    mkdir ~/.vim/colors/
fi
cp -R schema/vim-colors-solarized/colors/ ~/.vim/
sleep 3

vim +PluginInstall +qall
vim +PluginClean +qall

echo "----- Successfully installed ------"

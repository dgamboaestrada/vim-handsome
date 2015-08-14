#!/bin/bash

echo "Installing..."

echo "Copy .vimrc"
cp vimrc ~/.vimrc

if [ ! -d ~/.vim/bundle/Vundle.vim/ ]
then
    echo "Copy .vim/"
    if [ ! -d ~/.vim/ ]
    then
        mkdir ~/.vim/
    fi
    if [ ! -d ~/.vim/bundle/ ]
    then
        mkdir ~/.vim/bundle/
    fi
    cp -R vim/bundle/ ~/.vim/
fi

echo "Copy schema"
if [ ! -d ~/.vim/colors/ ]
then
    mkdir ~/.vim/colors/
fi
cp -R schema/vim-colors-solarized/colors/ ~/.vim/

echo "Install plugins"
vim +PluginInstall +qall
echo "Clean plugins"
vim +PluginClean +qall

echo "Install powerline fonts"
./other/fonts/install.sh

echo "----- Successfully installed ------"

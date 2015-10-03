#!/bin/bash
echo "Updating..."

echo "Copy .vimrc"
cp ./vim/vimrc ~/.vimrc

echo "Install plugins"
vim +PluginInstall +qall
echo "Clean plugins"
vim +PluginClean +qall

echo "----- Successfully updated ------"

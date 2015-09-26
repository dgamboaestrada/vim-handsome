#!/bin/bash
git fetch origin
git pull origin master

echo "Updating..."

echo "Copy .vimrc"
cp vimrc ~/.vimrc

echo "Install plugins"
vim +PluginInstall +qall
echo "Clean plugins"
vim +PluginClean +qall

echo "----- Successfully updated ------"

#!/bin/bash

echo "Installing..."

cp -R vim ~/.vim
cp vimrc ~/.vimrc
cp -R plugins/wordpress.vim ~/.vim/bundle

echo "Successfully installed"

#!/bin/bash
echo "Cloning installation files..."
git clone --recursive https://github.com/dgamboaestrada/vim-handsome.git ~/vim-handsome
echo "Done."
cd ~/vim-handsome

bash ./install-vim-configuration.sh

echo "Deleting installation files..."
rm -rf ~/vim-handsome
echo "Done."

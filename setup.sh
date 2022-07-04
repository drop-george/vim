#!/bin/bash

brew install vim neovim

mkdir -p "$HOME/.config"
ln -s "$PWD/nvim" "$HOME/.config/"
ln -s "$PWD/.vimrc" "$HOME/"
ln -s "$PWD/.vim" "$HOME/"

vim -c ':PlugInstall' -c ':qa!'
nvim -c ':PlugInstall' -c ':qa!'

# Patch fonts

curl https://github.com/Karmenzind/monaco-nerd-fonts/raw/master/fonts/Monaco%20Nerd%20Font%20Complete.otf -o 'Monaco Nerd Font Complete.otf'
cp 'fonts/Monaco Nerd Font Complete.otf' ~/Library/Fonts
echo "To see icons based on file types on NerdTree, switch your terminal font to Monaco Nerd Font Complete"

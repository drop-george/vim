#!/bin/bash

brew install vim neovim

mkdir -p "$HOME/.config"
ln -s "$PWD/nvim" "$HOME/.config/"
ln -s "$PWD/.vimrc" "$HOME/"
ln -s "$PWD/.vim" "$HOME/"

vim -c ':PlugInstall' -c ':qa!'
nvim -c ':PlugInstall' -c ':qa!'


#!/bin/bash

brew install vim neovim

mkdir -p "$HOME/.config"
ln -s ./nvim "$HOME/.config/"
ln -s ./.vimrc "$HOME/"
ln -s ./.vim "$HOME/"

vim -c ':PlugInstall' -c ':qa!'
nvim -c ':PlugInstall' -c ':qa!'


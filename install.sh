#!/bin/bash

mkdir ~/.config
mkdir ~/.config/nvim
ln -sf "$PWD"/nvim/init.vim ~/.config/nvim/init.vim
ln -sf "$PWD"/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

ln -sf "$PWD"/zsh/.zshrc ~/.zshrc

source ~/.zshrc

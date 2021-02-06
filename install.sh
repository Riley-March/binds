#!/bin/bash

mkdir ~/.config/nvim
ln -sf "$PWD"/init.vim ~/.config/nvim/init.vim
ln -sf "$PWD"/coc-settings.json ~/.config/nvim/coc-settings.json

ln -sf "$PWD"/.zshrc ~/.zshrc

source ~/.zshrc
source ~/.config/nvim/init.vim

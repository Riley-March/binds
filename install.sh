#!/bin/bash
mkdir ~/.config/neovim
ln -sf "$PWD"/init.vim ~/.config/neovim/init.vim
ln -sf "$PWD"/coc-settings.json ~/.config/neovim/coc-settings.json
ln -sf "$PWD"/.tmux.conf ~/.tmux.conf

source ~/.tmux.conf

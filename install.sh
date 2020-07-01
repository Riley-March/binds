#!/bin/bash
ln -sf "$PWD"/.zshrc ~/.zshrc
ln -sf "$PWD"/.vimrc ~/.vimrc
ln -sf "$PWD"/.tmux.conf ~/.tmux.conf

source ~/.zshrc
source ~/.vimrc
source ~/.tmux.conf

#!/bin/bash
ln -sf "$PWD"/.srv-vimrc ~/.vimrc
ln -sf "$PWD"/.srv-tmux.conf ~/.tmux.conf

source ~/.tmux.conf

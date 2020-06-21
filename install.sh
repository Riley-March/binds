#!/bin/bash
ln -sf "$PWD"/.bashrc ~/.bashrc
ln -sf "$PWD"/.bash_profile.sh ~/.bash_profile
ln -sf "$PWD"/.tmux.conf ~/.tmux.conf
ln -sf "$PWD"/settings.json $HOME/Library/Application Support/Code/User/settings.json

source ~/.bashrc
source ~/.bash_profile 
source ~/.tmux.conf 
source $HOME/Library/Application Support/Code/User/settings.json
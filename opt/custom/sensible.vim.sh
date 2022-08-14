#! /usr/bin/env bash

if [ ! -d "~/.vim/pack/tpope/start" ] 
then
    mkdir -p ~/.vim/pack/tpope/start
    cd ~/.vim/pack/tpope/start
    git clone https://tpope.io/vim/sensible.git
else
    "sensible.vim is already installed"    
fi    

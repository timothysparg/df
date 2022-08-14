#! /usr/bin/env bash

if ! command -v ~/.local/bin/bat &> /dev/null
then
    mkdir -p ~/.local/bin
    ln -s /usr/bin/batcat ~/.local/bin/bat
else
    "batcat is already symlinked to bat"    
fi 
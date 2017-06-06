#!/bin/bash

DOT_FILES=(.vimrc .gitconfig .bashrc)

for file in ${DOT_FILES[@]}
    do
        ln -s $HOME/dotfiles/$file $HOME/$file
        echo "embed: $file"
    done

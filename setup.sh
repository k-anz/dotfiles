#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
DOT_FILES=(.vimrc .gitconfig .bash_profile .bashrc)

for file in ${DOT_FILES[@]}
do
    ln -sf $SCRIPT_DIR/$file $HOME/$file
done

if [ ! -d ~/.vim/rc/ ]; then
    mkdir -p ~/.vim/rc
    ln -sf $SCRIPT_DIR/dein.toml ~/.vim/rc/
    ln -sf $SCRIPT_DIR/dein_lazy.toml ~/.vim/rc/
fi

echo 'finished.'

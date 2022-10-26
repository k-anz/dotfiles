#!/bin/bash
#
# `brew install neovim` が済んでいること

# ref: https://github.com/tani/vim-jetpack#installation
curl -fLo ~/.local/share/nvim/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim

SCRIPT_DIR=$(cd $(dirname $0); pwd)
DOT_FILES=(.vimrc .gitconfig .zshrc)

for file in ${DOT_FILES[@]}
do
    ln -sf $SCRIPT_DIR/$file $HOME/$file
done

ln -snfv ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim
ln -snfv ${HOME}/.vim ${HOME}/.config/nvim

echo 'finished.'

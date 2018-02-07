#!/bin/sh

# 参考 : universal ctagsをビルドする
# https://qiita.com/k-takata/items/4fba75b66b2cff3a02c7

cd ~
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure --enable-iconv
make
sudo make install
rm -rf ~/ctags

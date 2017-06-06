#!/bin/sh

# 参考 : CentOSのviでシンタックスハイライトを使えるようにする
# https://corgi-lab.com/linux/dev-env/vi-syntax-highlight/

yum install -y vim-enhanced
mv /bin/vi /bin/vim-tiny
ln -s /usr/bin/vim /bin/vi

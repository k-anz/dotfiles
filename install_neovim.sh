sudo yum -y install libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip
git clone https://github.com/neovim/neovim
cd neovim/
make
sudo make install
mkdir -p ~/.config/nvim/
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
rm -rf ~/neovim

#!/usr/bin/env bash

echo "====== configuration start ======"

echo "installing packages and tools..."

echo "update apt repositories..."
sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt update -y

echo "install apt packages..."
sudo apt install git build-essential cmake python3-pip neovim -y

# error on jetson (fix later)
sudi apt install python-is-python3 -y

echo "update pip..."
pip3 install --upgrade pip

echo "install python packages..."
pip3 install -r requirements.txt

echo "install plug-vim..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "configuring neovim..."


# copy `.config/nvim/init.vim` from the repository to your `~/.config/nvim/init.vim`
mkdir -p ~/.config/nvim
cp ./.config/nvim/init.vim ~/.config/nvim/init.vim # will overwrite if already exists

# install plugins from neovim
nvim +'PlugInstall --sync' +qa

echo "configuring neovim done."


echo "uninstall the normal vim..."
sudo apt remove vim -y

echo "apt upgrade..."
sudo apt upgrade -y

echo "apt auto remove..."
sudo apt autoremove -y

echo "====== configuration done ======"

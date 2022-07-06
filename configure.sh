#!/usr/bin/env bash

echo "installing packages and tools..."

sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt update -y
sudo apt install git build-essential cmake -y
sudo apt install python3-pip python-is-python3 -y 

# install neovim
sudo apt install neovim -y

# install plug-vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "configuring neovim..."


# copy `.config/nvim/init.vim` from the repository to your `~/.config/nvim/init.vim`
mkdir -p ~/.config/nvim
cp ./.config/nvim/init.vim ~/.config/nvim/init.vim # will overwrite if already exists

# install plugins from neovim
nvim +'PlugInstall --sync' +qa

echo "configuring neovim done."

# uninstall vim
sudo apt remove vim -y

# apt upgrade
sudo apt upgrade -y

# apt auto remove
sudo apt autoremove -y

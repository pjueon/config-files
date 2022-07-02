#!/usr/bin/env bash
echo "configuring neovim..."

# install neovim
sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt-get update -y
sudo apt-get install neovim -y

# install plug-vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# copy `.config/nvim/init.vim` from the repository to your `~/.config/nvim/init.vim`
mkdir -p ~/.config/nvim
cp ./.config/nvim/init.vim ~/.config/nvim/init.vim # will overwrite if already exists

# install plugins from neovim
nvim +'PlugInstall --sync' +qa

echo "configuring neovim done."

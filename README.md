# config-files
This repository is just a backup for personal configuration files.

## neovim configurations
1. install neovim 
```shell
sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt-get update
sudo apt-get install neovim
```

2. install [plug-vim](https://github.com/junegunn/vim-plug)
```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

3. copy `.config/nvim/init.vim` from the repository to your `~/.config/nvim/init.vim`
```shell
mkdir ~/.config/nvim # if not exist
cp ./.config/nvim/init.vim ~/.config/nvim/init.vim # will overwrite if already exists
```

4. install plugins from neovim
```
:PlugInstall
```

5. set neovim as the default editor (ubunt)
```shell
update-alternatives --config editor
# and select neovim
```

# dev_environment

## Step 1. Install oh-my-zsh

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Check [Git:Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) for any update.

Default plugins are in the following:

```
git clone git@github.com:Purkialo/nord_for_zsh $ZSH/themes/nord-extended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Step 2. Install nVim

Please refer to [Install Guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) or [Releases](https://github.com/neovim/neovim/releases/).

Place the config files at ```~/.config/nvim/*```

Install ```vim-plug``` first, then run ```:PlugInstall```.
``` 
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Check ```https://github.com/neovim/neovim``` for any update.


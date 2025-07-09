# dev_environment

## Step 1. Install oh-my-zsh

Check [Git:Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) for any update.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Default plugins are in the following:

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Step 2. Install powerlevel10k

Check [Git:powerlevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation) for any update.
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

## Step 3. Install nVim

Please refer to [Install Guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) or [Releases](https://github.com/neovim/neovim/releases/).

Place the config files at ```~/.config/nvim/*```

Install ```vim-plug``` first, then run ```:PlugInstall```.
``` 
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Check ```https://github.com/neovim/neovim``` for any update.


## Docker
```docker build --no-cache -t x-chu/3dcv_home:2.0.0 .```

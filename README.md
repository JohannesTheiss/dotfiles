### Installation
```
git clone https://github.com/JohannesTheiss/dotfiles
cd dotfiles
```

##### Zsh
link .zshrc
```
ln -sf ~/dotfiles/zshrc ~/.zshrc
```
install syntax highlighting
```
sudo pacman -S zsh-syntax-highlighting
```

##### [Neovim](https://neovim.io/)
```
sudo pacman -S neovim
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim/
or
echo "source ~/dotfiles/init.vim" > ~/.config/nvim/init.vim
```
##### [vim-plug](https://github.com/junegunn/vim-plug)
##### Install vim-plug from https://github.com/junegunn/vim-plug
##### Install needed Plugins
```
nvim ~/.config/nvim/init.vim -c PlugInstall
```
restart Neovim
and make a CheckHealth
```
nvim -c checkhealth
```
##### Install coc extensions
```
:CocInstall coc-highlight
```

##### [tmux](https://github.com/tmux/tmux)
```
sudo pacman -S tmux
cp tmux.conf ~/.tmux.conf
or
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
```

### Optional
set aliases in .bashrc or .zshrc 
```
alias v="nvim"

# tmux scripts
alias ide="~/scripts/ide"
alias qtide="~/scripts/tmux/qtIde"
```

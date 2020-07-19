### Installation
```
git clone https://github.com/JohannesTheiss/dotfiles
```
##### [Neovim](https://neovim.io/)
```
sudo pacman -S neovim
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim/
```
##### [vim-plug](https://github.com/junegunn/vim-plug)
##### Install vim-plug from https://github.com/junegunn/vim-plug
##### Install needed Plugins
```
nvim ~/.config/nvim/init.vim -c PlugInstall
```
restart Neovim


##### [tmux](https://github.com/tmux/tmux)
```
sudo pacman -S tmux
cp tmux.conf ~/.tmux.conf
```

### Optional
set aliases in ~/.bashrc
```
alias v="nvim"

# tmux scripts
alias ide="~/scripts/ide"
```
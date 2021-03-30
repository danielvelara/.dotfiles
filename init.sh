#! /usr/bin/env bash

sudo pacman -Syu
sudo pacman -S yay

# Terminal
# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 

mkdir -p .config/tilix/schemes
wget -qO $HOME"/.config/tilix/schemes/cobalt2.json" https://raw.githubusercontent.com/storm119/Tilix-Themes/master/Themes/cobalt2.json
wget -qO $HOME"/.config/tilix/schemes/gruvbox.json" https://raw.githubusercontent.com/storm119/Tilix-Themes/master/Themes/gruvbox.json

# Git
ln -sfn ~/.dotfiles/.gitconfig ~/.gitconfig

# Brave
yay -S brave
# ln -sfn ~/.dotfiles/bookmarks.html .config/BraveSoftware/Brave-Browser/Default/Bookmarks

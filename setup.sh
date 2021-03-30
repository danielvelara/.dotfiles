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

# Terminal Navigation
yay -S \
ranger exa \
tldr

# Git
ln -sfn ~/.dotfiles/.gitconfig ~/.gitconfig
yay -S lazygit
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc

# Neovim
yay -S neovim-nightly-bin xclip
ln -sfn ~/.dotfiles/init.vim ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Dev Tools
yay -S \
python python-pip
pip3 install scipy
yay -S \
nodejs nvm npm \
java-environment \
httpie ngrok aria2 # insomnia postman transmission cyberduck

# DevOps
yay -S \
docker ctop lazydocker

# Database Tools
yay -S \
litecli \
mongodb # mongodb-compass

# Brave
yay -S brave
# ln -sfn ~/.dotfiles/bookmarks.html .config/BraveSoftware/Brave-Browser/Default/Bookmarks

# Gnome
git clone 'https://github.com/paperwm/PaperWM.git' "${XDG_DATA_HOME:-$HOME/.local/share}/gnome-shell/extensions/paperwm@hedning:matrix.org"

# Utilities
yay -S \
zoom \
sxiv zathura vlc mpv \
newsboat \
#yay -S hledger ledger homebank

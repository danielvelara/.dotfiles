#! /usr/bin/env bash

sudo pacman -Syu
sudo pacman -S yay

# Terminal
yay -S alacritty
mkdir -p ~/.config/alacritty && ln -sfn ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 

mkdir -p .config/tilix/schemes
wget -qO $HOME"/.config/tilix/schemes/cobalt2.json" https://raw.githubusercontent.com/storm119/Tilix-Themes/master/Themes/cobalt2.json
wget -qO $HOME"/.config/tilix/schemes/gruvbox.json" https://raw.githubusercontent.com/storm119/Tilix-Themes/master/Themes/gruvbox.json

# Terminal Navigation
yay -S \
ranger exa bat tree ripgrep \ # nnn lf
tldr \
tmux \
thefuck \
fzf \
jump
ln -sfn ~/.dotfiles/.tmux.conf ~/.tmux.conf && tmux source-file ~/.tmux.conf
ln -sfn ~/.dotfiles/.Xresources ~/.Xresources
ln -sfn ~/.dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf


# Git
ln -sfn ~/.dotfiles/.gitconfig ~/.gitconfig
yay -S lazygit
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc

# Neovim
yay -S neovim-nightly-bin xclip
ln -sfn ~/.dotfiles/init.vim ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
ln -sfn ~/.dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

# Developer Tools
yay -S \
visual-studio-code-bin
python python-pip
pip3 install scipy
yay -S \
nodejs nvm npm \
java-environment \
httpie ngrok aria2 jq \ # insomnia postman transmission cyberduck
ccls tcc gcc # base-devel
# go dotnet-sdk mono flutter

# DevOps
yay -S \
docker ctop lazydocker
# aws-cli heroku-cli

# Database Tools
yay -S \
sqlite litecli \
#ln -sfn ~/.dotfiles/sqlite.rc ~/sqlite.rc \
mongodb # mongodb-compass \
#dbeaver
#postgres pgcli pgAdmin
#q

# Brave
yay -S brave
# ln -sfn ~/.dotfiles/bookmarks.html .config/BraveSoftware/Brave-Browser/Default/Bookmarks

# Gnome
git clone 'https://github.com/paperwm/PaperWM.git' "${XDG_DATA_HOME:-$HOME/.local/share}/gnome-shell/extensions/paperwm@hedning:matrix.org"

# System
yay -S \
gotop glances htop ncdu \
neofetch ufetch \
duf gdu ncdu \
gparted testdisk unetbootin \
7zip cfdisk \
dejadup
# arc-gtk-theme papirus ttf-firacode tts-ms-fonts noto-fonts
# screenkey imwheel
# bitwarden vault keepass

# Networking
yay -S \
protonvpn ntop

# Utilities
yay -S \
zoom \
sxiv zathura vlc mpv pandoc gimp youtube-dl deemix \
newsboat \
# obs-studio obs-virtualcam blender handbrake kdenlive audacity peek shutter
#yay -S hledger ledger homebank timetrap
#yay -S uxplay avahi-daemon checkra1n

# Music
sudo pacman -S mpd ncmpcpp
mkdir ~/.config/mpd
ln -sfn ~/.dotfiles/.mpd.conf ~/.config/mpd/mpd.conf
mkdir ~/.config/mpd/playlists

# Other
sudo pacman -S cmatrix pipes.sh

# Entertainmnet
# yay -S popcorntime-bin retroarch minecraft openttd

# Math
# yay -S qalculate tungsten mathics


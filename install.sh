#! /usr/bin/env bash

sudo pacman -Syu
sudo pacman -S yay

# Terminal
yay -S alacritty
mkdir -p ~/.config/alacritty && ln -sfn ~/.dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 

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
xrdb -load ~/.Xresources
ln -sfn ~/.dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf

# Git
ln -sfn ~/.dotfiles/.gitconfig ~/.gitconfig 
yay -S lazygit github-cli
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc

# Neovim
yay -S neovim xclip
mkdir -p ~/.config/nvim && ln -sfn ~/.dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
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
go go-tools \
httpie ngrok-bin aria2 jq \
ccls tcc gcc # base-devel
# insomnia postman transmission cyberduck
# go dotnet-sdk mono flutter
wget -qO- https://raw.githubusercontent.com/cra0zy/code-nautilus/master/install.sh | bash # Nautilus VSCode


# DevOps
yay -S \
docker ctop lazydocker-bin
# aws-cli heroku-cli

# Database Tools
yay -S \
sqlite litecli \
#ln -sfn ~/.dotfiles/sqlite.rc ~/sqlite.rc \
mongodb # mongodb-compass \
#dbeaver
#postgres pgcli pgAdmin
#q

# Cybersecurity
yay -S \
sublist3r-git \
burpsuite \
nikto \
wifite2 \
nmap

# Brave
yay -S brave-bin
# TODO: Find a way to import bookmarks

# Gnome
yay -S gnome-shell-extension-pop-shell blanket-bin

# System
#base-devel
yay -S \
gotop glances htop ncdu \
neofetch ufetch \
duf gdu ncdu \
gparted testdisk unetbootin \
7zip cfdisk \
dejadup \
net-tools \
bluez-utils
# arc-gtk-theme papirus ttf-firacode tts-ms-fonts noto-fonts
# screenkey imwheel
# bitwarden vault keepass

# Networking
yay -S \
protonvpn ntop

# Utilities
yay -S \
zoom \
zathura-pdf-poppler vlc mpv pandoc gimp youtube-dl deemix \
newsboat \
peek \
sxiv \
slides-bin \
texlive-core \
tmpmail \
pipes \
cmatrix \
monero-gui \
calibre-installer

# obs-studio obs-virtualcam blender handbrake kdenlive audacity peek shutter
#yay -S hledger ledger homebank timetrap
#yay -S uxplay avahi-daemon 
checkra1n-cli

# Music
sudo pacman -S mpd ncmpcpp
mkdir ~/.config/mpd
ln -sfn ~/.dotfiles/.config/mpd.conf ~/.config/mpd/mpd.conf
mkdir ~/.config/mpd/playlists

# Other
sudo pacman -S cmatrix pipes.sh

# Entertainmnet
# yay -S popcorntime-bin retroarch minecraft openttd 0ad

# Math
# yay -S qalculate tungsten mathics

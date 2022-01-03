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
# https://github.com/egel/tmux-gruvbox
ln -sfn ~/.dotfiles/.Xresources ~/.Xresources
xrdb -load ~/.Xresources
ln -sfn ~/.dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Git
ln -sfn ~/.dotfiles/.gitconfig ~/.gitconfig 
yay -S lazygit github-cli
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc
git config --global alias.cm "commit -m"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.st "status -sb"
git config --global core.editor "nvim"
git config --global alias.superlog "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

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
hugo \
yay -S \
nodejs nvm npm \
java-environment \
go go-tools \
httpie ngrok-bin aria2 jq \
tcc gcc # base-devel
# insomnia postman transmission cyberduck
# go dotnet-sdk mono flutter
wget -qO- https://raw.githubusercontent.com/cra0zy/code-nautilus/master/install.sh | bash # Nautilus VSCode
ccls \


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
yay -S gnome-shell-extension-pop-shell

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
bluez-utils \
sc-im \
cryptomator-bin \
python-spotdl 
# arc-gtk-theme papirus ttf-firacode tts-ms-fonts noto-fonts
# screenkey imwheel
# bitwarden vault keepass

# Networking
yay -S \
protonvpn ntop

# Utilities
yay -S \
anki-bin \
zoom \
zathura-pdf-poppler vlc mpv pandoc gimp youtube-dl deemix \
sc \


peek \
sxiv \
slides-bin \
texlive-core \
tmpmail \
pipes \
cmatrix \
monero-gui \
calibre-installer \
newsboat 
mkdir -p ~/.newsboat/
ln -sfn ~/.dotfiles/.config/newsboat/config ~/.newsboat/config
ln -sfn ~/.dotfiles/.config/newsboat/urls ~/.newsboat/urls


# obs-studio obs-virtualcam blender handbrake kdenlive audacity peek shutter
#yay -S hledger ledger homebank timetrap
#yay -S uxplay avahi-daemon 

# Music
sudo pacman -S mpd ncmpcpp mpc
mkdir ~/.config/mpd
mkdir ~/.config/mpd/playlists
ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf
ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist
mkdir ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/ncmpcpp ~/.config
sudo pacman -S spotify-tui-bin spotifyd 


# Other
sudo pacman -S cmatrix pipes.sh

# Entertainmnet
# yay -S popcorntime-bin retroarch minecraft openttd 0ad tint-tetris

# Math
# yay -S qalculate tungsten mathics

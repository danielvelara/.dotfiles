#! /usr/bin/env bash

sudo pacman -Syu
sudo pacman -S yay
yay -S networkmanager
# systemctl enable NetworkManager

yay -S brave-bin

# Terminal
yay -S alacritty && \
    ln -sfn ~/.dotfiles/.config/alacritty ~/.config
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S ttf-meslo-nerd-font-powerlevel10k                                                 ─╯
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
ln -sfn ~/.dotfiles/.p10k.zsh ~/

# System
yay -S awesome && \
    ln -sfn ~/.dotfiles/.config/awesome ~/.config
yay -S rofi rofi-emoji rofi-calc && \
    ln -sfn ~/.dotfiles/.config/rofi/ ~/.config
# git clone --depth=1 https://github.com/adi1090x/rofi.git ; cd rofi ; chmod +x setup.sh ; ./setup
yay -S polybar && \
    ln -sfn ~/.dotfiles/.config/polybar ~/.config
yay -S ranger && \
    ln -sfn ~/.dotfiles/.config/ranger ~/.config
yay -S cronie
yay -S flameshot


# Terminal Navigation
yay -S \
    pass
    ranger \
    exa \
    bat \
    tree \
    ripgrep \
    tldr \
    tmux \
    thefuck \
    fzf \
    jump

ln -sfn ~/.dotfiles/.tmux.conf ~/.tmux.conf && tmux source-file ~/.tmux.conf
# https://github.com/egel/tmux-gruvbox
ln -sfn ~/.dotfiles/.Xresources ~/
xrdb -load ~/.Xresources
ln -sfn ~/.dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
yay -S perl-image-exiftool


# Developer
yay -S git lazygit github-cli && \
    ln -sfn ~/.dotfiles/.gitconfig ~/ && \
    ln -sfn ~/.dotfiles/.config/gh ~/.config && \
    echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc
    
yay -S neovim xclip ccls && ln -sfn ~/.dotfiles/.config/nvim ~/.config && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

yay -S \
    base-devel \
    tcc \
    visual-studio-code-bin \
    python python-pip tk \
    pip3 install neovim
    pip3 install scipy
    pip3 install pyqt5 matplotlib
    hugo \
    nodejs npm nvm\
    npm i -g typescript
    jdk-openjdk \
    go go-tools 

yay -S \
    firebase-tools-bin \
    aws-cli-v2-bin

# Networking
yay -S \
    httpie \
    ngrok-bin \
    aria2 \
    aircrack-ng \
    speedtest-cli \
    nload \
    ipcalc \
    whois \
    gnu-netcat \
    jq 


# insomnia postman transmission cyberduck
# go dotnet-sdk mono flutter
wget -qO- https://raw.githubusercontent.com/cra0zy/code-nautilus/master/install.sh | bash

# DevOps
yay -S \
docker \
lazydocker-bin \
sudo groupadd docker
sudo usermod -aG docker $USER
# reboot
# aws-cli heroku-cli

# Database Tools
yay -S \
sqlite \
litecli \
sqlitebrowser
#ln -sfn ~/.dotfiles/sqlite.rc ~/sqlite.rc \
# dbeaver
# postgres
# pgcli
# pgAdmin
# q
# mongodb
# mongodb-compass

# Cybersecurity
yay -S \
sublist3r-git \
burpsuite \
nikto \
wifite2 \
nmap

# Gnome
yay -S \
gnome-shell-extension-pop-shell-git \
gnome-themes-extra

yay -S neofetch && \
    ln -sfn ~/.dotfiles/.config/neofetch ~/.config
# System
yay -S \
    bc \
    sc-im \
    gotop htop ncdu \
    duf gdu ncdu \
    gparted testdisk unetbootin \
    7zip cfdisk \
    dejadup \
    bluez bluez-utils \
    # gnome-bluetooth \
    espeak-ng \
# arc-gtk-theme papirus ttf-firacode tts-ms-fonts ttf-ms-fonts noto-fonts
pacman -S ttf-liberation
# screenkey imwheel
# bitwarden vault keepass

# Networking
yay -S \
net-tools \
protonvpn \
# ntop \


# Utilities
# Images
yay -S gimp imagemagick
sudo npm i -g @squoosh/cli

yay -S zathura-pdf-poppler && \
    ln -sfn ~/.dotfiles/.config/zathura ~/.config
yay -S mpv && \
    ln -sfn ~/.dotfiles/.config/mpv ~/.config
yay -S vlc pandoc gimp yt-dlp deemix \
    pomo
sc \
scrcpy \
sxiv \
slides-bin \
beamer-bin \
texlive-core \
tmpmail \
pipes \
cmatrix \
calibre-installer \


# Productivity
anki-bin \
zoom \
newsboat \
mkdir -p ~/.newsboat/ \
ln -sfn ~/.dotfiles/.config/newsboat/config ~/.newsboat/config \
ln -sfn ~/.dotfiles/.config/newsboat/urls ~/.newsboat/urls \


obs-studio   handbrake  audacity peek shutter

blender
kdenlive

# Finance
yay -S \
hledger-bin \
ledger \
timetrap
#yay -S uxplay avahi-daemon 
docker pull ghcr.io/gamestonkterminal/gst-poetry:latest                                             ─╯

# Crypto
yay -S \
monero-gui \
ticker \
cointop-bin



# Music
# mkdir ~/.config/mpd
# mkdir ~/.config/mpd/playlists
# mkdir ~/.config/ncmpcpp
yay -S ncmpcpp mpc mpd && \
    ln -sfn ~/.dotfiles/.config/ncmpcpp ~/.config && \
    ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf && \
    ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist

yay -S python-spotdl \
ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp
# yay -S pulsemixer

# sudo pacman -S spotify-tui-bin spotifyd 


# Utilities
sudo pacman -S cmatrix pipes.sh

# Entertainmnet
# yay -S popcorntime-bin retroarch minecraft openttd 0ad tint-tetris

# Math
yay -S qalculate libqalculate
ln -sfn ~/.dotfiles/.config/qalculate ~/.config
# yay -S tungsten mathics

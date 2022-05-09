#! /usr/bin/env bash

sudo pacman -Syu
sudo pacman -S yay
yay -S networkmanager
# systemctl enable NetworkManager

# Display Server
sudo pacman -S xorg
# sudo pacman -S wayland

# Display Manager
pacman -S lxdm
systemctl enable lxdm.service

# Desktop Envrionment
sudo pacman -S gnome gnome-extra gnome-shell-extension-pop-shell-git gnome-themes-extra
# sudo pacman -S xfce4 xfce4-goodies
yay -S xfce4-settings
# yay -S awesome && ln -sfn ~/.dotfiles/.config/awesome ~/.config
yay -S brightnessctl
yay -S xorg-xrandr
yay -S polybar
yay -S networkmanager_dmenu
ln -sfn ~/.dotfiles/.config/networkmanager-dmenu ~/.config


# Desktop Tools
yay -S rofi rofi-emoji rofi-calc && ln -sfn ~/.dotfiles/.config/rofi/ ~/.config
# git clone --depth=1 https://github.com/adi1090x/rofi.git ; cd rofi ; chmod +x setup.sh ; ./setup
yay -S polybar && ln -sfn ~/.dotfiles/.config/polybar ~/.config
yay -S ranger && ln -sfn ~/.dotfiles/.config/ranger ~/.config
yay -S dunst && ln -sfn ~/.dotfiles/.config/dunst ~/.config


# Terminal
yay -S alacritty && ln -sfn ~/.dotfiles/.config/alacritty ~/.config
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S ttf-meslo-nerd-font-powerlevel10k                                                 ─╯
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
ln -sfn ~/.dotfiles/.p10k.zsh ~/

yay -S cronie

# Gnome
yay -S brave-bin
yay -S librewolf-bin

# System
yay -S \
    bc \
    sc-im \
    visidata \
    gotop htop ncdu \
    duf gdu ncdu \
    gparted testdisk unetbootin \
    7zip cfdisk \
    dejadup \
    bluez bluez-utils \
    espeak-ng \
# arc-gtk-theme papirus ttf-firacode tts-ms-fonts ttf-ms-fonts noto-fonts
pacman -S ttf-liberation
yay -S neofetch && ln -sfn ~/.dotfiles/.config/neofetch ~/.config

yay -S redshift
ln -sfn ~/.dotfiles/.config/redshift ~/.config

# screenkey imwheel


# Terminal Navigation
yay -S \
    pass \
    pass-otp \
    exa \
    fd \
    bat \
    tree \
    tldr \
    thefuck \
    ripgrep \
    fzf \
    jump
ln -sfn ~/.dotfiles/.config/bat ~/.config

    # https://github.com/egel/tmux-gruvbox

ln -sfn ~/.dotfiles/.Xresources ~/
xrdb -load ~/.Xresources
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
yay -S tmux && ln -sfn ~/.dotfiles/.tmux.conf ~/.tmux.conf && tmux source-file ~/.tmux.conf
yay -S newsboat && ln -sfn ~/.dotfiles/.config/newsboat ~/.newsboat
yay -S ranger && ln -sfn ~/.dotfiles/.config/ranger ~/.config
yay -S lf-bin && ln -sfn ~/.dotfiles/.config/lf ~/.config
yay -S perl-image-exiftool mediainfo



# Git
yay -S git lazygit github-cli && ln -sfn ~/.dotfiles/.gitconfig ~/
yay -S github-cli && ln -sfn ~/.dotfiles/.config/gh ~/.config && \
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc

# Text Editors
yay -S \
    visual-studio-code-bin \
    neovim xclip ccls && ln -sfn ~/.dotfiles/.config/nvim ~/.config && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
npm install -g bash-language-server

yay -S \
    base-devel tcc \
    python python-pip tk \
    nodejs npm nvm\
    jdk-openjdk \
    rust \
    go go-tools \ 

pip3 install pyqt5 matplotlib
npm i -g typescript
# hugo \


wget -qO- https://raw.githubusercontent.com/cra0zy/code-nautilus/master/install.sh | bash
yay -S pcmanfm thunar

# Networking
yay -S \
    net-tools \
    bind \ # dig, host, nslookup
    ngrok-bin \
    inetutils \
    aria2 \
    speedtest-cli \
    nload \
    ipcalc \
    whois \
    cups \
    ntop \
    protonvpn \
    ufw \
    gufw \
    httpie \
    jq 

# Cybersecurity
yay -S \
    aircrack-ng \
    sublist3r-git \
    gnu-netcat \
    burpsuite \
    nikto \
    wifite2 \
    nmap

# insomnia postman transmission 

# DevOps
yay -S docker lazydocker-bin && \
    sudo groupadd docker
    sudo usermod -aG docker $USER
yay -S \
    heroku-cli-bin \
    firebase-tools-bin \
    aws-cli-v2-bin \

# Database Tools
yay -S \
    sqlite \
    litecli \
    pgcli \
    sqlitebrowser \
    dbeaver \
ln -sfn ~/.dotfiles/.sqliterc ~/
# postgres
# pgAdmin
# q
# mongodb
# mongodb-compass

# Android & iOS
yay -S scrcpy # uxplay avahi-daemon 

# GUI Apps
yay -S anki-bin \ zoom
yay -S libreoffice-still

# Screen Recording & Video & Images
yay -S && \
    kdenlive \
    obs-studio \
    peek \
    flameshot \
    handbrake \
    audacity \ 
    blender \
    gimp \
    imagemagick

# Utilities

yay -S zathura-pdf-poppler && ln -sfn ~/.dotfiles/.config/zathura ~/.config
yay -S mpv && ln -sfn ~/.dotfiles/.config/mpv ~/.config
yay -S pandoc-bin yt-dlp \
    pomo \
    sc \
    sxiv \
    slides-bin \
    beamer-bin \
    texlive-core \
    tmpmail \
    pipes \
    cmatrix \
    # calcurse \
    # khal \
    calibre-installer \



# Finance
yay -S \
    hledger-bin \
    ticker
    ledger \
    timetrap
docker pull ghcr.io/gamestonkterminal/gst-poetry:latest                                             ─╯

# Finance & Crypto
yay -S \
    monero-gui \
    cointop-bin \
    electrum \
    wasabi-wallet-bin


# Music
yay -S ncmpcpp mpc mpd && \
    ln -sfn ~/.dotfiles/.config/ncmpcpp ~/.config && \
    ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf && \
    ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist

yay -S python-spotdl \
ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp
# yay -S pulsemixer

# sudo pacman -S spotify-tui-bin spotifyd 


# CLI
sudo pacman -S cmatrix pipes.sh

# Entertainmnet
# yay -S popcorntime-bin retroarch retroarch-assests-xmb minecraft openttd 0ad tint-tetris

# Math
yay -S qalculate libqalculate
ln -sfn ~/.dotfiles/.config/qalculate ~/.config
# yay -S tungsten mathics

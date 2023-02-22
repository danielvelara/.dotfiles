#! /usr/bin/env bash

# Make sure user is running as root
if [ $EUID -ne 0 ]
then
    echo "Program should run as root"
    exit
fi

# Ask for confirmation
echo "Continue with Arch setup? y/n"
read CONFIRM
if [ $CONFIRM = n ]
then 
    exit
fi
sleep 1s
clear

# Install yay
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

# System 
ln -sfn ~/.dotfiles/.xinitrc .xinitrc
# yay -S slock # betterlockscren, i3lock
# yay -S xautolock
# ln -sfn ~/.dotfiles/.profile .profile
# ln -sfn ~/.dotfiles/.Xresources .Xresources

# Terminal
yay -S zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 

yay -S ttf-meslo-nerd-font-powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

yay -S alacritty && ln -sfn ~/.dotfiles/.config/alacritty ~/.config
ln -sfn ~/.dotfiles/.p10k.zsh ~/

# yay -S networkmanager && systemctl enable NetworkManager


# sudo pacman -S xfce4 xfce4-goodies
yay -S xfce4-settings
yay -S brightnessctl
yay -S xorg-xrandr
yay -S networkmanager_dmenu
ln -sfn ~/.dotfiles/.config/mimeapps.list .config

# System

# Desktop Tools
yay -S \
    pcmanfm \
    thunar \
    gvfs gvfs-mtp

yay -S lf-bin && ln -sfn ~/.dotfiles/.config/lf ~/.config 
yay -S xplr && ln -sfn ~/.dotfiles/.config/xplr ~/.config # A hackable, minimal, fast TUI file explorer

yay -S \
    rofi \
    rofi-emoji \
    rofi-calc \
    && ln -sfn ~/.dotfiles/.config/rofi/ ~/.config
# git clone --depth=1 https://github.com/adi1090x/rofi.git ; cd rofi ; chmod +x setup.sh ; ./setup
yay -S polybar && ln -sfn ~/.dotfiles/.config/polybar ~/.config
yay -S ranger && ln -sfn ~/.dotfiles/.config/ranger ~/.config
yay -S dunst && ln -sfn ~/.dotfiles/.config/dunst ~/.config
yay -S xclip

ln -sfn ~/.dotfiles/.config/networkmanager-dmenu ~/.config

# Appearance
yay -S \
    lxappearance  \ # change themes, icons, cursors or fonts
    arc-gtk-theme \
    papirus-icon-theme


yay -S cronie


# System
yay -S \
    bc \
    sc-im \
    visidata \
    htop ncdu bottom \
    duf gdu ncdu \
    gparted testdisk unetbootin \
    7zip cfdisk \
    dejadup \
    bluez bluez-utils \
    espeak-ng \
    qrcp \
    fsrx 

yay -S neofetch && ln -sfn ~/.dotfiles/.config/neofetch ~/.config

# Fonts
pacman -S ttf-liberation ttf-firacode tts-ms-fonts ttf-ms-fonts noto-fonts


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



yay -S vscodium-bin && ln -sfn ~/.dotfiles/.config/VSCodium/User ~/.config/VSCodium
ln -sfn ~/.dotfiles/.config/VSCodium/product.json ~/.config/VSCodium # Enable Marketplace
ln -sfn ~/.dotfiles/.config/VSCodium/keybindings.json ~/.config/VSCodium/User 
ln -sfn ~/.dotfiles/.config/VSCodium/settings.json ~/.config/VSCodium/User 
ln -sfn ~/.dotfiles/.config/VSCodium/snippets ~/.config/VSCodium/User 
# Copy User Settings
# cp ~/.config/Code/User ~/.config/VSCodium
# Copy Extensions
# cp ~/.code ~/.vscode-oss
# vscodium --install-extension 



# Git
yay -S git lazygit github-cli && ln -sfn ~/.dotfiles/.gitconfig ~/
yay -S git-chglog
yay -S github-cli && ln -sfn ~/.dotfiles/.config/gh ~/.config && \
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc

# NeoVim
yay -S neovim ccls && ln -sfn ~/.dotfiles/.config/nvim ~/.config
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
npm install -g bash-language-server

# LunarVim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

yay -S \
    base-devel tcc \
    python python-pip tk \
    nodejs npm nvm \
    deno \
    jdk-openjdk \
    go go-tools \ 
    rust 


# Applications
yay -S brave-bin librewolf-bin
yay -S imv # Image viewer for Wayland/X11



#######################
# Developer
yay -S hugo

# Terminal
yay -S perl-image-exiftool mediainfo

# Terminal Networking
yay -S \
    net-tools \
    bind \ # dig, host, nslookup
    ngrok-bin \
    inetutils \
    aria2 \
    nload \
    ipcalc \
    whois \
    cups \
    ntop \
    protonvpn \
    ufw \
    gufw \
    httpie \
    insomnia-bin \
    jq

yay -S traefik-bin portmaster-stub-bin

# Cybersecurity
yay -S \
    aircrack-ng \
    sublist3r-git \
    gnu-netcat \
    burpsuite \
    nikto \
    wifite2 \
    nmap

# DevOps
yay -S docker lazydocker-bin && \
    sudo groupadd docker
    sudo usermod -aG docker $USER
yay -S \
    heroku-cli-bin \
    firebase-tools-bin \
    aws-cli-v2-bin \
    azure-cli-bin

ln -s /etc/bash_completion.d/azure-cli ~/.oh-my-zsh/custom/az.zsh # Autocomplete


# Database Tools
yay -S \
    sqlite \
    litecli \
    sqlitebrowser \
    pgcli \
    dbeaver \
    usql \
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


# Finance & Crypto
yay -S \
    hledger-bin \
    monero-gui \
    cointop-bin \
    bisq-bin
docker pull ghcr.io/gamestonkterminal/gst-poetry:latest                                             ─╯


# Music
yay -S ncmpcpp mpc mpd && \
    ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf && \
    ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist
    ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
    ln -sfn ~/.dotfiles/.config/ncmpcpp ~/.config && \
    ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp

# yay -S python-spotdl \
# yay -S pulsemixer

# CLI
sudo pacman -S cmatrix pipes.sh

# Entertainmnet
# yay -S popcorntime-bin retroarch retroarch-assests-xmb minecraft openttd 0ad tint-tetris

# Math
yay -S qalculate libqalculate
ln -sfn ~/.dotfiles/.config/qalculate ~/.config
# yay -S tungsten mathics

echo "Successfull installation! Reboot? y/n"
read REBOOT
if [ $REBOOT = y ]
then
    echo "rebooting..."
    sleep 1s
    reboot
fi

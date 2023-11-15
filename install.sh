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

# Install Nix
sh <(curl -L https://nixos.org/nix/install) --daemon


# yay
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

# System 
ln -sfn ~/.dotfiles/.xinitrc .xinitrc
ln -sfn ~/.dotfiles/.Xresources ~/
xrdb -load ~/.Xresources
ln -sfn ~/.dotfiles/.xinitrc .xinitrc
ln -sfn ~/.dotfiles/.config/mimeapps.list ~/.config
# yay -S  betterlockscren
# yay -S xautolock
# ln -sfn ~/.dotfiles/.profile .profile

# Terminal
yay -S alacritty zsh ttf-meslo-nerd-font-powerlevel10k tmux
ln -sfn ~/.dotfiles/.config/alacritty ~/.config
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# ln -sfn ~/.dotfiles/.p10k.zsh ~/
ln -sfn ~/.dotfiles/.tmux.conf ~/

# System
yay -S polybar dunst rofi rofi-emoji rofi-calc redshift xorg-xrandr arandr autorandr
ln -sfn ~/.dotfiles/.config/polybar ~/.config
ln -sfn ~/.dotfiles/.config/dunst ~/.config
ln -sfn ~/.dotfiles/.config/rofi/ ~/.config

yay -S bluez bluez-utils cups
systemctl enable bluetooth.service --now
systemctl enable cups.service --now

# CLI
yay -S pass pass-otp exa fd bat tldr navi ripgrep fzf jump dust csview czkawka-cli git-delta hexyl
yay -S neofetch visidata ncdu bottom duf gdu ncdu gparted testdisk nvtop hyperfine
yay -S 7zip cfdisk qrcp libqalculate
yay -S man-db perl-image-exiftool mediainfo
yay -S xclip cronie screenkey
yay -S power-profiles-daemon brightnessctl feh

# Fonts
pacman -S ttf-liberation ttf-firacode ttf-ms-fonts noto-fonts noto-fonts-emoji

yay -S vscodium-bin
ln -sfn ~/.dotfiles/.config/VSCodium/product.json ~/.config/VSCodium # Enable Marketplace
ln -sfn ~/.dotfiles/.config/VSCodium/keybindings.json ~/.config/VSCodium/User 
ln -sfn ~/.dotfiles/.config/VSCodium/settings.json ~/.config/VSCodium/User 
ln -sfn ~/.dotfiles/.config/VSCodium/snippets ~/.config/VSCodium/User 

# Git
yay -S git lazygit github-cli git-chglog onefetch
ln -sfn ~/.dotfiles/.gitconfig ~/
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc

# Neovim
yay -S neovim
ln -sfn ~/.dotfiles/.config/nvim ~/.config
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
sudo npm i -g bash-language-server

# Developer
yay -S python python-pip
pip install --user pipx
pipx ensurepath
pipx install poetry

yay -S jdk-openjdk go base-devel tcc rust hugo
yay -S nodejs npm
yay -S elixir inotify-tools
yay -S sqlite litecli sqlitebrowser pgcli dbeaver usql postgresql # Databases

# Cloud
yay -S docker docker-compose lazydocker-bin aws-cli-v2-bin traefik-bin portmaster-stub-bin flyctl-bin # DevOps
sudo usermod -aG docker $USER
npm i -g serve
npm i -g serverless

# AI
yay -S ollama whisper.cpp

# Networking
yay -S net-tools bind ngrok-bin inetutils aria2 nload ipcalc whois ntop protonvpn ufw gufw httpie insomnia-bin jq websocat static-web-server-bin gping oha tailscale nmap rustscan ipfs intermodal-bin

# Cybersecurity
yay -S aircrack-ng sublist3r-git gnu-netcat burpsuite nikto wifite2 nmap

# Applications
yay -S brave-bin librewolf-bin anki-bin xournalapp
yay -S imv mpv zathura zathura-pdf-mupdf
ln -sfn ~/.dotfiles/.config/zathura ~/.config
yay -S obs-studio gimp handbrake imagemagick flameshot # Media

# Files
yay -S lf-bin xplr thunar xarchiver unzip gvfs gvfs-mtp scrcpy lxappearence
ln -sfn ~/.dotfiles/.config/lf ~/.config 
ln -sfn ~/.dotfiles/.config/xplr ~/.config

# Utilities
yay -S hledger-bin cointop-bin # Finance
yay -S pandoc-bin beamer-bin texlive-core \
    slides-bin \
    # slidev-bin \
    # calcurse \
    # khal \
    # pomo \
    rustdesk-bin \
    calibre

yay -S newsboat
ln -sfn ~/.dotfiles/.newsboat ~/

# yay -S python-spotdl yt-dlp \
# Music
yay -S ncmpcpp mpc mpd pulsemixer
ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf
ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist
ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp
systemctl enable mpd --now


echo "Remember to set autorandr config"
echo "Successfull installation! Reboot? y/n"
read REBOOT
if [ $REBOOT = y ]
then
    echo "rebooting..."
    sleep 1s
    reboot
fi

#! /usr/bin/env bash

# Make sure user is running as root
if [ $EUID -ne 0 ]; then
	echo "Program should run as root"
	exit
fi

# Ask for confirmation
echo "Continue with Arch setup? y/n"
read CONFIRM
if [ $CONFIRM = n ]; then
	exit
fi
sleep 1s
clear


# Install yay
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# yay -S bluez bluez-utils cups power-profiles-daemon
# systemctl enable bluetooth.service --now
# systemctl enable cups.service --now


# System
sudo pacman -S wlsunset-git wl-clipboard # yay -S dunst polybar lxappearence rofi rofi-emoji rofi-calc screenkey
# sway swayidle pavucontrol swaybg waybar grim dmenu slurp xorg-xwayland mako wofi kanshi
sudo pacman -S ttf-meslo-nerd-font-powerlevel10k ttf-liberation # noto-fonts noto-fonts-emoji ttf-font-awesome



ln -sfn ~/.dotfiles/.zshrc ~/.zshrc
ln -sfn ~/.dotfiles/.tmux.conf ~/
mkdir ~/.config/sway    && ln -sfn ~/.dotfiles/.config/sway ~/.config/ 
mkdir ~/.config/foot    && ln -sfn ~/.dotfiles/.config/foot ~/.config/ 
mkdir ~/.config/mpd     && ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf
                           ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist
mkdir ~/.config/ncmpcpp && ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
                           ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp

mkdir ~/.config/waybar && ln -sfn ~/.dotfiles/.config/waybar ~/.config/
# mkdir ~/.config/dunst  && ln -sfn ~/.dotfiles/.config/dunst  ~/.config/ 
# mkdir ~/.config/rofi   && ln -sfn ~/.dotfiles/.config/rofi   ~/.config
# mkdir ~/.config/lvim   && ln -sfn ~/.dotfiles/.config/lvim   ~/.config

# ln -sfn ~/.dotfiles/.newsboat ~/
# ln -sfn ~/.dotfiles/.config/polybar ~/.config
# ln -sfn ~/.dotfiles/.config/alacritty ~/.config
# ln -sfn ~/.dotfiles/.config/VSCodium/settings.json ~/.config/VSCodium/User

yay -S zsh tmux
sh -c "$(curl -fsSL https://raw.github.com/tyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Applications
yay -S \ 
	librewolf-bin \
	anki-bin \
	obs-studio \
	thunar \
	thunar-archive-plugin \
	xarchiver \
	unzip \
	zathura \
	zathura-pdf-mupdf \
	imv \
	mpv \
	gimp \
	# flameshot imagemagick calibre gvfs gvfs-mtp
	
# CLIfzf ripgrep
yay -S bottom hledger-bin tldr ncmpcpp mpc mpd fzf ripgrep bat neofetch # pulsemixer pass pass-otp   libqalculate  duf gdu navi jump hugo dust cfdisk tokei pdftk qpdf csview gparted testdisk  visidata czkawka-cli nvtop hyperfine stress-ng 7zip qrcp feh xclip cronie man-db gpg-tui mediainfo perl-image-exiftool newsboat slides-bin lf-bin yazi calcurse

# Developer
yay -S asdf-vm lazygit git-delta github-cli lazydocker-bin docker flyctl-bin ollama # ctop dive docker-compose sqlite sqlitebrowser dbeaver postgresql 
# git-chglog git-cliff onefetch gitleaks
# sudo usermod -aG docker $USER

# Networking
yay -S caddy  # protonvpn ufw gufw jq oha wrk bind ntop nmap gping aria2 whois nload nikto ipcalc trippy httpie wifite2 websocat rustscan goaccess net-tools termshark inetutils tailscale burpsuite gnu-netcat aircrack-ng intermodal-bin portmaster-stub-bin

# npm inotify-tools 
# pip install --user pipx
# pipx install poetry ensurepath yt-dlp python-spotdl

asdf plugin add erlang && asdf install erlang latest && asdf global erlang latest
asdf plugin add elixir && asdf install elixir latest && asdf global elixir latest
asdf plugin add golang && asdf install golang latest && asdf global golang latest
asdf plugin add nodejs && asdf install nodejs latest && asdf global nodejs latest
asdf plugin add python && asdf install python latest && asdf global python latest
asdf plugin add neovim && asdf install neovim latest && asdf global neovim latest

bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
# LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

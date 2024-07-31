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

# Nix
# sh <(curl -L https://nixos.org/nix/install) --daemon

# Install yay
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# yay -S bluez bluez-utils cups
# systemctl enable bluetooth.service --now
# systemctl enable cups.service --now

# sway swayidle brightnessctl pavucontrol swaybg waybar grim foot swaylock dmenu slurp xorg-xwayland mako wofi 
sudo pacman -S wlsunset-git
yay -S zsh tmux
sh -c "$(curl -fsSL https://raw.github.com/tyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# Fonts
pacman -S ttf-ms-fonts ttf-liberation noto-fonts noto-fonts-emoji ttf-meslo-nerd-font-powerlevel10k ttf-font-awesome # ttf-firacode

# Sway
mkdir ~/.config/sway && ln -sfn ~/.dotfiles/.config/sway/config ~/.config/sway 
mkdir ~/.config/foot && ln -sfn ~/.dotfiles/.config/foot/foot.ini ~/.config/foot 
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc
ln -sfn ~/.dotfiles/.tmux.conf ~/

# i3wm
# yay -S dunst polybar redshift lxappearence rofi rofi-emoji rofi-calc xorg-xrandr arandr autorandr


# ln -sfn ~/.dotfiles/.config/waybar/ ~/.config/
# ln -sfn ~/.dotfiles/.xinitrc ~/
# ln -sfn ~/.dotfiles/.newsboat ~/
# ln -sfn ~/.dotfiles/.gitconfig ~/
# ln -sfn ~/.dotfiles/.Xresources ~/
# ln -sfn ~/.dotfiles/.profile .profile
# ln -sfn ~/.dotfiles/.config/lf ~/.config
# ln -sfn ~/.dotfiles/.config/nvim ~/.config
# ln -sfn ~/.dotfiles/.config/dunst ~/.config
# ln -sfn ~/.dotfiles/.config/rofi/ ~/.config
# ln -sfn ~/.dotfiles/.config/polybar ~/.config
# ln -sfn ~/.dotfiles/.config/alacritty ~/.config
# ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
# ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp
# ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf
# ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist
# ln -sfn ~/.dotfiles/.config/VSCodium/settings.json ~/.config/VSCodium/User

# Applications
yay -S librewolf-bin anki-bin obs-studio thunar thunar-archive-plugin xarchiver unzip # vscodium-bin zathura zathura-pdf-mupdf  imv mpv gimp flameshot imagemagick calibre
	#   gvfs gvfs-mtp
	

########################
## CLI
########################

yay -S bottom hledger-bin # tldr pass pass-otp fzf ripgrep  slidev-bin libqalculate
	bat \
	duf \
	gdu \
	navi \	
	jump \
 	hugo \
	dust \
	cfdisk \
	ncdu \
	tokei \
	pdftk \
	qpdf \
	csview \
	gparted \
	testdisk \
	neofetch \
	visidata \
	czkawka-cli \
	nvtop \
	hyperfine \
	stress-ng \
	7zip \
	qrcp \
	feh \
	xclip \
	cronie \
	man-db \
 	gpg-tui \
 	mediainfo \
	screenkey \
	perl-image-exiftool \
	power-profiles-daemon \
	scrcpy \
	newsboat \
	slides-bin \
	lf-bin \
 	yazi \
	ncmpcpp mpc mpd pulsemixer \
	pandoc-bin beamer-bin texlive-core # calcurse \


# Developer

yay -S asdf-vm lazygit lazydocker-bin flyctl-bin # ctop dive docker  docker-compose sqlite sqlitebrowser dbeaver postgresql ollama
# github-cli git-chglog git-cliff onefetch git-delta gitleaks
# echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >>~/.zshrc && source ~/.zshrc

 
# npm inotify-tools python python-pip
pip install --user pipx
pipx install poetry ensurepath yt-dlp python-spotdl

asdf plugin add erlang && asdf install erlang latest && asdf global erlang latest
asdf plugin add elixir && asdf install elixir latest && asdf global elixir latest
asdf plugin add golang && asdf install golang latest && asdf global golang latest
asdf plugin add nodejs && asdf install nodejs latest && asdf global nodejs latest
asdf plugin add python && asdf install python latest && asdf global python latest
asdf plugin add neovim && asdf install neovim latest && asdf global neovim latest


bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
sudo usermod -aG docker $USER


########################
## Networking
########################

yay -S  # caddy	protonvpn ufw gufw
	jq \
	oha \
 	wrk \
	bind \
	ntop \
	nmap \
	gping \
	aria2 \
	whois \
	nload \
	nikto \
	ipcalc \
	trippy \
	httpie \
	wifite2 \
	websocat \
	rustscan \
	goaccess \
	net-tools \
	termshark \
	ngrok-bin \
	inetutils \
	tailscale \
	burpsuite \
	gnu-netcat \
	aircrack-ng \
	intermodal-bin \
	portmaster-stub-bin \

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

########################
## Nix
########################

sh <(curl -L https://nixos.org/nix/install) --daemon

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

########################
## System
########################

sudo pacman -S sway swaybg foot polkit waybar ttf-font-awesome mako wofi wlsunset
ln -sfn ~/.dotfiles/.config/sway/config ~/.config/sway 
ln -sfn ~/.dotfiles/.config/foot/foot.ini ~/.config/foot 
ln -sfn ~/.dotfiles/.config/waybar/ ~/.config/

yay -S \
	zsh \
	tmux \
	alacritty \
	ttf-meslo-nerd-font-powerlevel10k

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

ln -sfn ~/.dotfiles/.xinitrc ~/
ln -sfn ~/.dotfiles/.newsboat ~/
ln -sfn ~/.dotfiles/.gitconfig ~/
ln -sfn ~/.dotfiles/.tmux.conf ~/
ln -sfn ~/.dotfiles/.Xresources ~/
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc
ln -sfn ~/.dotfiles/.profile .profile
ln -sfn ~/.dotfiles/.config/lf ~/.config
ln -sfn ~/.dotfiles/.config/nvim ~/.config
ln -sfn ~/.dotfiles/.config/xplr ~/.config
ln -sfn ~/.dotfiles/.config/dunst ~/.config
ln -sfn ~/.dotfiles/.config/rofi/ ~/.config
ln -sfn ~/.dotfiles/.config/polybar ~/.config
ln -sfn ~/.dotfiles/.config/alacritty ~/.config
ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf
ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist
ln -sfn ~/.dotfiles/.config/VSCodium/settings.json ~/.config/VSCodium/User

########################
## Fonts
########################

pacman -S \
	ttf-firacode \
	ttf-ms-fonts \
	ttf-liberation \
	noto-fonts noto-fonts-emoji

########################
## Git
########################

yay -S git lazygit github-cli git-chglog git-cliff onefetch git-delta
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >>~/.zshrc && source ~/.zshrc

########################
## i3wm
########################

yay -S \
	dunst \
	polybar \
	redshift \
	lxappearence \
	rofi rofi-emoji rofi-calc \
	xorg-xrandr arandr autorandr

yay -S bluez bluez-utils cups
systemctl enable bluetooth.service --now
systemctl enable cups.service --now

########################
## Applications
########################

yay -S \
	thunar thunar-archive-plugin xarchiver unzip gvfs gvfs-mtp \
	brave-bin \
	librewolf-bin \
	anki-bin \
	vscodium-bin \
	calibre \
	imv \
	mpv \
	zathura zathura-pdf-mupdf \
	obs-studio \
	gimp \
	handbrake \
	imagemagick \
	flameshot

########################
## CLI
########################

yay -S \
	pass pass-otp \
	fzf \
	bat \
	duf \
	gdu \
	age \
	tldr \
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
	bottom \
	gparted \
	ripgrep \
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
 	slidev-bin \
	libqalculate \
	brightnessctl \
	perl-image-exiftool \
	power-profiles-daemon \
	scrcpy \
	hledger-bin \
	newsboat \
	slides-bin \
	lf-bin \
	xplr \
	ncmpcpp mpc mpd pulsemixer \
	pandoc-bin beamer-bin texlive-core # calcurse \

########################
## Developer
########################

yay -S \
	base-devel \
	asdf \
    	ctop \
    	dive \
	docker \
 	flyctl-bin \
 	lazydocker-bin \
 	docker-compose \
  sqlite litecli sqlitebrowser dbeaver usql \
	postgresql pgcli \
	goreleaser-bin
 
# npm inotify-tools python python-pip
pip install --user pipx
pipx install poetry ensurepath yt-dlp python-spotdl

asdf plugin add erlang && asdf install erlang latest && asdf global erlang latest
asdf plugin add elixir && asdf install elixir latest && asdf global elixir latest
asdf plugin add golang && asdf install golang latest && asdf global golang latest
asdf plugin add nodejs && asdf install nodejs latest && asdf global nodejs latest
asdf plugin add python && asdf install python latest && asdf global python latest
# asdf plugin add java

yay -S neovim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
sudo usermod -aG docker $USER


########################
## Networking
########################

yay -S \
	jq \
	oha \
	ufw \
	gufw \
	bind \
	ntop \
	ipfs \
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
	protonvpn \
	termshark \
	ngrok-bin \
	inetutils \
	tailscale \
	burpsuite \
	gnu-netcat \
	aircrack-ng \
	traefik-bin \
	sublist3r-git \
	intermodal-bin \
	portmaster-stub-bin \
	static-web-server-bin

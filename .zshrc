# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/danielvelara/.oh-my-zsh"
# export CDPATH=$CDPATH:/Users/danielvelara/Documents/kata
export ERL_AFLAGS="-kernel shell_history enabled"
ZSH_THEME="robbyrussell" # "random"
ZSH_THEME="powerlevel10k/powerlevel10k"
# echo $RANDOM_THEMEK
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# oh-my-zsh
# export UPDATE_ZSH_DAYS=13
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
CASE_SENSITIVE="false" 

DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false" 
COMPLETION_WAITING_DOTS="false"
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
DISABLE_UNTRACKED_FILES_DIRTY="false"
# DISABLE_MAGIC_FUNCTIONS="true"
HYPHEN_INSENSITIVE="false" # _ and - will be interchangeable.


# HIST_STAMPS="yyyy-mm-dd"


# PLUGINS: $ZSH/plugins & $ZSH_CUSTOM/plugins/
plugins=(git gh python docker docker-compose aws pass golang archlinux ufw npm httpie terraform deno zsh-syntax-highlighting zsh-autosuggestions httpie mix poetry asdf)

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

source $ZSH/oh-my-zsh.sh
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

# gsettings set org.gnome.desktop.interface text-scaling-factor 1.4
# redshift -O 2500k -P
. /opt/asdf-vm/asdf.sh


export ARCHFLAGS="-arch x86_64"
export VISUAL=nvim;
export EDITOR=nvim;
export LEDGER_FILE=.main.journal
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Aliases
alias vim='lvim'
alias exa='exa -l'
alias dmenu='rofi -dmenu'
alias n=ncmpcpp
alias nb=newsboat
alias q=qalc
alias ct=cointop
# alias code="codium"
alias hl="hledger"
alias lvim="~/.local/bin/lvim"
alias lg="lazygit"
alias ld="lazydocker"
alias cat=bat
alias py=python3

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/home/danielvelara/.deta/bin:$PATH"
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

fpath+=~/.zfunc
zstyle ':completion:*' menu select
autoload -Uz compinit && compinit
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

# Created by `pipx` on 2023-08-01 02:22:07
export PATH="$PATH:/home/danielvelara/.local/bin"

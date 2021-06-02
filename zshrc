# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# oh-my-zsh configuration:

# Path to your oh-my-zsh installation.
export ZSH="/Users/izabelakowal/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#--------------------------------------------------

# TODO: customize prompt
# PROMPT='
# %1~ %L %# '

# RPROMPT='%*'

# Homebrew no-quarantine option
export HOMEBREW_CASK_OPTS="--no-quarantine"

# syntax highlighting for manpages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# create aliases
source $HOME/.dotfiles/aliases.zsh

# functions
function mkcd() {
	mkdir -p "$@" && cd "$_";
}

# pyenv setup
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pipx setup
# pipx ensurepath
export PATH="$PATH:/Users/izabelakowal/.local/bin"

# TODO not sure if this should be in zshrc
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"

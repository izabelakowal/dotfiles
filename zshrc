
export HOMEBREW_CASK_OPTS="--no-quarantine"

# syntax highlighting for manpages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# create aliases
source $HOME/.dotfiles/aliases.zsh

# customize prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'

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

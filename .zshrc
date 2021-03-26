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

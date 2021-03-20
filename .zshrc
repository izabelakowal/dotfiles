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

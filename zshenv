# Homebrew no-quarantine option
export HOMEBREW_CASK_OPTS="--no-quarantine"

# syntax highlighting for manpages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# pipx ensurepath
export PATH="$PATH:/Users/izabelakowal/.local/bin"

# functions
function exists() {
    command -v $1 >/dev/null 2>&1
}

function mkcd() {
	mkdir -p "$@" && cd "$_";
}

# set up brew - uncomment below for M1
# eval "$(/opt/homebrew/bin/brew shellenv)"

# add pyenv executable to PATH and enable shims
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

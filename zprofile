# set up brew for M1
if [[ `uname -m` == 'arm64' ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # crucial for running postgres on M1
  export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib -L/opt/homebrew/opt/libpq/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include -I/opt/homebrew/opt/libpq/include"
fi

# add pyenv executable to PATH and enable shims
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

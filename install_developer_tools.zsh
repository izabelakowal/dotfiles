#!/usr/bin/env zsh

echo "Installing VSCode extensions...\n"
cat vscode_extensions | xargs -L 1 code --install-extension

# install pyenv
# TODO check with exists
echo "Setting up pyenv...\n"
brew install openssl readline sqlite3 xz zlib
curl https://pyenv.run | bash
# TODO check:
# which pyenv
# echo $PATH | grep --color=auto "$(pyenv root)/shims"
# TODO install recent version

# setup pipx
# TODO check with exists
brew install pipx
pipx ensurepath

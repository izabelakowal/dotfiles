#!/usr/bin/env zsh

# install/update pyenv
if [ ! -d ~/.pyenv ]; then
    echo "\nInstalling pyenv...\n"
    brew install openssl readline sqlite3 xz zlib
    curl https://pyenv.run | bash
else
    echo "\npyenv already installed\n"
fi

# TODO check:
# which pyenv
# echo $PATH | grep --color=auto "$(pyenv root)/shims"
# TODO install recent version

# install pipx and pipx packages
echo "\nInstalling pipx...\n"
brew install pipx
echo "\nInstalling pipx packages...\n"
while read -r P; do
    pipx install "$P"
done <"$HOME/.dotfiles/python/pipx-requirements.txt"

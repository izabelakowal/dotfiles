#!/usr/bin/env zsh

echo "Setting up Homebrew...\n"

if test ! $(which brew); then
  echo 'Installing Brew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo 'Brew exists, skipping install'
fi

# update your Brewfile with
# brew bundle dump --force --describe 
brew bundle --verbose

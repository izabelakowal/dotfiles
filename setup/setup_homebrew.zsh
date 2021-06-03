#!/usr/bin/env zsh

echo "\nSetting up Homebrew...\n"

if exists brew; then
  echo "\nBrew exists, skipping install\n"
else
  echo "\nInstalling Brew\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose

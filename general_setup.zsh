#!/usr/bin/env zsh

echo "\nSetting up Homebrew...\n"

# install brew and brew packages
if exists brew; then
  echo "\nBrew exists, skipping install\n"
else
  echo "\nInstalling Brew\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose

# install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    echo "\nSetting up oh-my-zsh...\n"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "\noh-my-zsh already installed\n"
fi

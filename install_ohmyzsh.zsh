#!/usr/bin/env zsh

if [ ! -d ~/.oh-my-zsh ]; then
    echo "\nSetting up oh-my-zsh...\n"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "\noh-my-zsh already installed\n"
fi

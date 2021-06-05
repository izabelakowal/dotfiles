#!/usr/bin/env zsh

echo "\nInstalling VSCode extensions...\n"
cat $HOME/.dotfiles/vscode/vscode_extensions | xargs -L 1 code --install-extension

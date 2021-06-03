#!/usr/bin/env zsh

echo "\nInstalling VSCode extensions...\n"
cat vscode_extensions | xargs -L 1 code --install-extension

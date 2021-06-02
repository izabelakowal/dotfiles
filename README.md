# dotfiles
dotfiles for mac os

#### Setting up a new Mac:
1. Install macOS Command Line Tools by running `xcode-select --install`
2. Generate a new public and private SSH key and add them to Github
3. `git clone git@github.com:izabelakowal/dotfiles.git ~/.dotfiles`
4. Review Brewfile
5. Run `./install`
6. Setup Dropbox for mackup sync
7. Review `mackup restore --dry-run --verbose`
8. Run `mackup restore`

#### Maintenance:
* update Brewfile with `brew bundle dump --force --describe`
* update VSCode extensions with `code --list-extensions > vscode_extensions`

 #### Inspiration:
 * [driesvints/dotfiles](https://github.com/driesvints/dotfiles)
 * [eieioxyz/dotfiles_macos](https://github.com/eieioxyz/dotfiles_macos)

# dotfiles
dotfiles for macOS, including:
* pyenv
* pipx
* VSCode extensions
* oh-my-zsh
* mackup backup
* dotbot

#### Setting up a new Mac:
1. Install macOS Command Line Tools by running `xcode-select --install`
2. Generate a new public and private SSH key and add them to Github
3. `git clone git@github.com:izabelakowal/dotfiles.git ~/.dotfiles`
4. Review `Brewfile`
5. Review `python/pipx-requirements.txt` 
6. Set `GLOBAL_PY` in `python/install_python_tools.zsh` to the Python version you want to set as a pyenv global
7. Run `./install`
8. Set up Dropbox for mackup sync
9. Review `mackup restore --dry-run --verbose`
10. Run `mackup restore`

#### Maintenance:
* update Brewfile with `brew bundle dump --force --describe`
* update VSCode extensions with `code --list-extensions > vscode_extensions` in `vscode` directory

#### TODO:
* [ ] add oh-my-zsh Python plugins
* [ ] create M1 configuration on a separate branch

 #### Inspiration:
 * [eieioxyz/dotfiles_macos](https://github.com/eieioxyz/dotfiles_macos)
 * [driesvints/dotfiles](https://github.com/driesvints/dotfiles)
 * [llazzaro/dotfiles](https://github.com/llazzaro/dotfiles)
 * [br3ndonland/dotfiles](https://github.com/br3ndonland/dotfiles)
 * [diogolundberg/dotfiles](https://github.com/diogolundberg/dotfiles)

#!/usr/bin/env zsh

# shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias ls="ls -lAFh"
alias pack="tar zcvf"
alias unpack="tar xvzf"

# directories
alias dotfiles="cd $DOTFILES"

# git
alias gl="git log --oneline --decorate --color"
alias git_most_changed="git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -20"

# docker
alias drmi_all="docker rmi $(docker images)"
alias drmi_prune="docker system prune"
alias drm_volumes="docker volume rm $(docker volume ls -q)"

# python
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

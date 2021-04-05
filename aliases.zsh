# shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias ls='ls -lAFh'
alias pack='tar zcvf'
alias unpack='tar xvzf'

# directories
alias dotfiles="cd $DOTFILES"

# git
alias gl="git log --oneline --decorate --color"

# docker
alias drmiall='docker rmi $(sudo docker images)'
alias drmi_prune='docker system prune'

# python
alias ipy="python -c 'import IPython; IPython.frontend.terminal.ipapp.launch_new_instance()'"

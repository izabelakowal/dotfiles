# shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias unpack='tar xvzf'
alias pack='tar zcvf'

# directories
alias dotfiles="cd $DOTFILES"

# git
alias gl="git log --oneline --decorate --color"

# docker
alias drmiall='docker rmi $(sudo docker images)'
alias drmi_prune='docker system prune'

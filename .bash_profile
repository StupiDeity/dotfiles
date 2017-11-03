# Setup bash completion

if [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
  for f in $(find /usr/local/etc/bash_completion.d -type l -iname "*")
  do
    source $f
  done
fi

source /usr/local/bin/git-prompt.sh

# grep with color
alias grep='grep --color=auto'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# refresh shell
alias reload='source ~/.bash_profile'

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

# Show color output for git status
export GIT_PS1_SHOWCOLORHINTS=1

# Set the GOPATH for proper compilation and go imports
export GOPATH=/Users/rajat.goyal/code/go

export CLICOLOR=1
export PS1='\[\033[1;33m\]\w\[\033[m\] 🌀  \[\033[1;33m\]$(__git_ps1 "(%s)")\[\033[0m\]\n\[\033[1;31m\]\u\[\033[m\]🖖 : '
export LSCOLORS=ExFxBxDxCxegedabagacad

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'


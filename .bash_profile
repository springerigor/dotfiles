[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Git autocomplete
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Git aliases
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gch='git checkout'
alias gl='git log --pretty=oneline --abbrev-commit'
alias gll='git pull'
alias gpom='git pull origin master'
alias gp='git push'
alias gd='git diff'
alias gdc='git diff --cached'
alias gb='git branch'
alias gcb='git checkout -b'
alias gdel='git branch -d'
alias gu='git checkout master && git pull && bundle'

# Bash aliases
alias showruby='lsof -wni tcp:3000'
alias l='ls -all'
alias ..='cd ..'
alias ...='cd ../..'

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


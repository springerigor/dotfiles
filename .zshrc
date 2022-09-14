# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=$PATH:/Users/igor.springer/Library/Python/3.8/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
DEFAULT_USER="igor.springer"

# Longer bash history
export HISTFILESIZE=10000000
export HISTSIZE=10000000

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git macos ruby rails docker zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Git aliases
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gch='git checkout'
alias gl='git log --pretty=oneline --abbrev-commit'
alias gll='git pull'
alias gpom='git pull origin master'
alias gp='git push -u'
alias gd='git diff'
alias gdc='git diff --cached'
alias gb='git branch'
alias gcb='git checkout -b'
alias gdel='git branch -d'

# Ruby & Rails aliases
alias bi='bundle install'
alias up='git checkout master && git pull && bundle install && rake db:migrate'

# Bash aliases
alias l='ls -all'
alias ..='cd ..'
alias ...='cd ../..'

# Docker aliases
alias dcu='docker stop $(docker ps -a -q) && docker rm --force $(docker ps -a -q) && docker rmi --force $(docker images -q)'

# RVM
source ~/.rvm/scripts/

# DataCamp aliases
alias aws-login=onelogin-aws-login
alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3
alias dt-replica=mysql --host=main-app-aurora.rds.datacamp-staging.com --port=3306 --ssl-ca=$HOME/.ssh/rds-ca-2019-root.pem --enable-cleartext-plugin --user=developer_readonly --database=dc_staging -p

# Preferred editors for local and remote sessions
export EDITOR='nano'
export VISUAL='nano'
export PAGER='less'

# Nove version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# NPM token
export NPM_TOKEN=$(cat ~/.npmrc | sed -e "s/.*_authToken=//")
export PATH="/usr/local/opt/terraform@0.12/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export PATH=${PATH}:/usr/local/mysql/bin/

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
export SHELL_SESSION_HISTORY=0

zplug 'mafredri/zsh-async'
zplug 'sindresorhus/pure'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-completions'
zplug load

# autoload -U promptinit; promptinit
# prompt pure
export EDITOR='vim'

export ZSH_THEME="dracula-pro"

COMPLETION_WAITING_DOTS="true"

stty -ixon -ixoff 
stty start undef stop undef

alias ls='ls -FG'
alias ez="vim  ~/.zshrc"
alias sz="source  ~/.zshrc"
alias et="vim ~/.tmux.conf"
alias be="bundle exec"
alias delbranch='git branch -D'
alias branches="git branch --sort=committerdate"
alias compose="sudo docker-compose up -d"
alias tx="tmuxinator"
# alias vim="nvim"

alias tadb="heroku pg:psql -a truva-acceptance"
alias tarc="heroku run bundle exec rails console -a truva-acceptance"
alias aok="rubocop && yarn lint && yarn test && rspec"
alias ypw="yarn prettier --write"
alias trv="cd ~/code/truva"
alias mbid="DATABASE=vts rake db:create db:migrate"
alias nbid='f() { DATABASE=vts rake db:new_migration name=$1 };f'
alias vim="nvim"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# No arguments: `git status`
# # With arguments: acts like `git`
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

autoload -Uz compinit
compinit

# Completion for kitty
# kitty + complete setup zsh | source /dev/stdin

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# Complete g like git
compdef g=git

export PATH="$HOME/.pyenv/shims:$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PYENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

unsetopt nomatch

  # Terraform
  alias tf="terraform"

  export AWS_DEFAULT_REGION=us-east-2

export SIDEKIQ_CREDS=99c62bd8:cbc6e930

set -o vi
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
export SHELL_SESSION_HISTORY=0

zplug 'mafredri/zsh-async'
# zplug 'sindresorhus/pure'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-completions'
zplug load

export EDITOR='vim'


COMPLETION_WAITING_DOTS="true"

stty -ixon -ixoff 
stty start undef stop undef

alias ls='ls -FG'
alias ez="vim  ~/.zshrc"
alias sz="source  ~/.zshrc"
alias et="vim ~/.tmux.conf"
alias be="bundle exec"
alias delbranch='git branch -D'
alias branches="~/bin/branches"
alias compose="sudo docker-compose up -d"
alias vim="nvim"

alias aok="rubocop && yarn lint && yarn test && rspec"
alias ypw="yarn prettier --write"
alias trv="cd ~/code/truva"
alias editvim="cd ~/.dotfiles/nvim"
alias vim="nvim"
alias tf="terraform"
alias dbdump="pg_restore --verbose --clean --no-acl --no-owner -h localhost -U viewthespace -d truva_development"

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#

eval "$(direnv hook zsh)"

# # No arguments: `git status`
# # # With arguments: acts like `git`
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

run_ci() {
  gh workflow run master_commit.yaml --ref $(git rev-parse --abbrev-ref HEAD)
  sleep 5
  open https://github.com/viewthespace/truva/actions/runs/$(gh run list --workflow=master_commit.yaml -b $(git rev-parse --abbrev-ref HEAD) | head -1 | cut -f7)
}

# autoload -Uz compinit
# compinit


if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
##### WHAT YOU WANT TO DISABLE FOR WARP - BELOW

  fpath+=($HOME/.zsh/pure)
  autoload -U promptinit; promptinit
  prompt pure
    # POWERLEVEL10K

##### WHAT YOU WANT TO DISABLE FOR WARP - ABOVE
fi

# # Completion for kitty
# # kitty + complete setup zsh | source /dev/stdin

# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# # Complete g like git
# compdef g=git

export PATH="$HOME/.dotfiles/scripts:$HOME/.pyenv/shims:$HOME/.nodenv/bin:$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PYENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# unsetopt nomatch

#   # Terraform

export AWS_DEFAULT_REGION=us-east-2

export SIDEKIQ_CREDS=99c62bd8:cbc6e930

alias history='history 1'
#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY   
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export SAVEHIST=1000000
setopt sharehistory
setopt extendedhistory

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
  export AWS_DEFAULT_REGION=us-east-2
PATH="/usr/local/opt/grep/libexec/gnubin:/Users/ericfirth/.nodenv/shims:/Users/ericfirth/.pyenv/shims:/Users/ericfirth/.rbenv/shims:/Users/ericfirth/.nodenv/bin:/Users/ericfirth/.rbenv/bin:/Users/ericfirth/.rbenv/shims:/bin:/usr/local/Cellar/zplug/2.4.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/Library/Apple/usr/bin:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="/Users/ericfirth/code/truva:$PATH"
export PATH="/Users/ericfirth/code/truva:$PATH"

export GO111MODULE=on
export GOPATH=~/.go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

bindkey -v
bindkey '^R' history-incremental-search-backward

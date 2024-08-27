set -o vi
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug 'mafredri/zsh-async'
# zplug 'sindresorhus/pure'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-completions'
zplug load

export EDITOR='vim'


alias ls='ls -FG'
alias ez="vim  ~/.zshrc"
alias sz="source  ~/.zshrc"
alias et="vim ~/.tmux.conf"
alias be="bundle exec"
alias delbranch='git branch -D'
alias vim="nvim"

alias ypw="yarn prettier --write"
alias vim="nvim"
alias tf="terraform"
alias prst="git diff --name-only --cached | xargs yarn prettier --write"

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

# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# # Complete g like git
# compdef g=git

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"

#   # Terraform

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

export GO111MODULE=on
export GOPATH=~/.go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

bindkey -v
bindkey '^R' history-incremental-search-backward
export PATH="$HOME/bin:$HOME/.pyenv/shims:$HOME/.nodenv/bin:$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PYENV_ROOT/bin:$PATH"
# BEGIN ANSIBLE MANAGED BLOCK
# Load homebrew shell variables
eval "$(/opt/homebrew/bin/brew shellenv)"

# Force certain more-secure behaviours from homebrew
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_DIR=/opt/homebrew
export HOMEBREW_BIN=/opt/homebrew/bin

# Load python shims
eval "$(pyenv init -)"

# Load ruby shims
eval "$(rbenv init -)"

# Prefer GNU binaries to Macintosh binaries.
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# Add datadog devtools binaries to the PATH
export PATH="$HOME/dd/devtools/bin:$PATH"

# Point GOPATH to our go sources
export GOPATH="$HOME/go"

# Add binaries that are go install-ed to PATH
export PATH="$GOPATH/bin:$PATH"

# Point DATADOG_ROOT to ~/dd symlink
export DATADOG_ROOT="$HOME/dd"

# Tell the devenv vm to mount $GOPATH/src rather than just dd-go
export MOUNT_ALL_GO_SRC=1

# store key in the login keychain instead of aws-vault managing a hidden keychain
export AWS_VAULT_KEYCHAIN_NAME=login

# tweak session times so you don't have to re-enter passwords every 5min
export AWS_SESSION_TTL=24h
export AWS_ASSUME_ROLE_TTL=1h

# Helm switch from storing objects in kubernetes configmaps to
# secrets by default, but we still use the old default.
export HELM_DRIVER=configmap

# Go 1.16+ sets GO111MODULE to off by default with the intention to
# remove it in Go 1.18, which breaks projects using the dep tool.
# https://blog.golang.org/go116-module-changes
export GO111MODULE=auto
export GOPRIVATE=github.com/DataDog
# Configure Go to pull go.ddbuild.io packages.
export GOPROXY=binaries.ddbuild.io,https://proxy.golang.org,direct
export GONOSUMDB=github.com/DataDog,go.ddbuild.io
# END ANSIBLE MANAGED BLOCK
export GITLAB_TOKEN=$(security find-generic-password -a ${USER} -s gitlab_token -w)

# Update with your preference
export DATADOG_ROOT=~/dd
# Force certain more-secure behaviours from homebrew
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
# Add devtools binaries in your PATH, so you have access to 'to-staging' and 'branches-status'
export PATH="$PATH:$DATADOG_ROOT/devtools/bin"

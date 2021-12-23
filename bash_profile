export SHELL_SESSION_HISTORY=0
HISTSIZE=5000
HISTFILESIZE=10000
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

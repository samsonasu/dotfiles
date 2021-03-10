# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bsamson/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
plugins=(git ssh-agent docker)

source $ZSH/oh-my-zsh.sh

export EDITOR=/usr/bin/vim
export PAGER=""

# pyenv/rvm
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/usr/local/lib/node_modules/yarn/bin"

# annoying zsh feature where it CDs for you for no reason
unsetopt AUTO_CD 

# You may need to manually set your language environment
export LANG=en_US.UTF-8


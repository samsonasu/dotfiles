####### ZSH core setup ######

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## OH-MY-ZSH
export ZSH="$HOME/.oh-my-zsh"
plugins=(git gitfast)
source $ZSH/oh-my-zsh.sh

###### Language support ######

## RVM
export PATH="$PATH:$HOME/.rvm/bin"
alias rake='noglob rake'

## Java
# OSX
if [ -e /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

## Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Python
# if which pyenv-virtualenv-init > /dev/null; then echo 'pyenv'; eval "$(pyenv virtualenv-init -)"; fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

###### Path modifcation

# put ~/bin in front of the path
export PATH=$HOME/bin:$PATH
export PATH="${PATH}:${HOME}/.krew/bin"

###### Random settings
export PAGER=cat


# Put machine specific crap in ~/.zshlocal
if [ -f ~/.zshlocal ]; then
    source ~/.zshlocal
else
    # print "404: ~/.zshlocal not found."
fi

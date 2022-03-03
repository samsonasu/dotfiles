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
export NVM_AUTO_USE=true

# ssh-agent
zstyle :omz:plugins:ssh-agent lazy true

# Initialize all plugins
plugins=(git gitfast ssh-agent zsh-nvm)
source $ZSH/oh-my-zsh.sh

###### Language support

## RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# Fix square brackets for rake https://kinopyo.com/en/blog/escape-square-bracket-by-default-in-zsh
alias rake='noglob rake'


## Java
# OSX
if [ -e /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

## Python
# if which pyenv-virtualenv-init > /dev/null; then echo 'pyenv'; eval "$(pyenv virtualenv-init -)"; fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

###### Path modifcation

# put ~/bin in front of the path
export PATH=$HOME/bin:$PATH

# Clone this repo to your homedirectory to get the bins
if [ -e $HOME/dotfiles/bin ]; then
  export PATH=$HOME/dotfiles/bin:$PATH
fi

export PATH="${PATH}:${HOME}/.krew/bin"

###### Random settings
export PAGER=cat


# Put machine specific crap in ~/.zshlocal
if [ -f ~/.zshlocal ]; then
    source ~/.zshlocal
else
    # print "404: ~/.zshlocal not found."
fi

# trick rvm, nvm, etc into doing their thing when a new terminal opens in a project directory
cd .
#!/bin/bash 
# Install ZSH first

# oh-my-zsh
read -p "Install oh-my-zsh?" yn
case $yn in
    [Yy]* ) 
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ;;
esac

read -p "Install powerlevel 10k?" yn
case $yn in
    # powerlevel 10k
    [Yy]* ) git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
 esac

## Language Support
# Install pyenv
read -p "Install Pyenv?" yn
case $yn in
    [Yy]* ) 
    if [[ $OSTYPE == 'darwin'* ]]; then
        brew install pyenv pyenv-virtualenv
    else     
        curl https://pyenv.run | bash
    fi
esac

# Install rvm
read -p "Install rvm?" yn
case $yn in
    [Yy]* )
        gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
        curl -sSL https://get.rvm.io | bash
        ;;
esac

# Install nvm
read -p "Install nvm?" yn
case $yn in
    [Yy]* ) curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
esac

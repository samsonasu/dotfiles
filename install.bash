#!/bin/bash
# Install ZSH first

which zsh > /dev/null 2>&1

if [ $? -ne 0 ] ; then
    echo "Please make sure zsh is installed via your package manager first"
    exit 1
fi

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
        ;;
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
    [Yy]* )
        git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
        ;;
esac

echo "Helpful symlinks include: "
echo "      ln -s dotfiles/zshrc .zshrc"
echo "      ln -s dotfiles/p10k.zsh .p10k.zsh"
echo "      ln -s dotfiles/alacritty.yml ~/.alacritty.yml"
echo "      ln -s dotfiles/tmux.conf ~/.tmux.conf"
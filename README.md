# samsonasu's dotfiles

Clone into ~/dotfiles for best results. 

## ZSH

Run install_zsh.bash and it will do a bunch of stuff. 

then in home directory: 

    ln -s dotfiles/zshrc .zshrc
    ln -s dotfiles/p10k.zsh .p10k.zsh


you also need NerdFonts https://github.com/ryanoasis/nerd-fonts but its easy if you go here: 

https://github.com/romkatv/powerlevel10k#fonts


## Alacritty

    ln -s dotfiles/alacritty.yml ~/.alacritty.yml 


## tmux

    ln -s dotfiles/tmux.conf ~/.tmux.conf

## VScode

I used to use settings.json but now I'm trying the vscode setting sync tied to my github account. 

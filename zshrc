
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit


if [ $ITERM_SESSION_ID ]; then
  precmd() {
    echo -ne "\033]0;${PWD##*/}\007"
  }
fi

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[%b]'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n:${PWD/#$HOME/~} [${vcs_info_msg_0_}] %# '

PROMPT='%~${vcs_info_msg_0_}%# '

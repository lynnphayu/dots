if [ "$ZELLIJ" = "" ]; then zellij; fi

export ZSH="/Users/frenco/.oh-my-zsh"
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# https://starship.rs
eval "$(starship init zsh)"
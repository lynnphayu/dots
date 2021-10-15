
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# disable zellij for now
# if [[ -z "$ZELLIJ" ]]; then zellij; fi

export ZSH="/Users/frenco/.oh-my-zsh"
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# https://starship.rs
eval "$(starship init zsh)"

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

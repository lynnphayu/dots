# if [[ -z "$ZELLIJ" && -n "$ALACRITTY_LOG" ]]; then zellij; fi

export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# zoxide
eval "$(zoxide init zsh)"

# https://starship.rs
eval "$(starship init zsh)"

# make theme script executable
eval "$(chmod +x ~/theme.sh)"

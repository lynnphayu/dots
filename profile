# local bin
export PATH="$HOME/.local/bin:$PATH"

# gpg
export GPG_TTY=$(tty)

# golang
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# pnpm
export PNPM_HOME="/Users/frenco/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# rust
\. "$HOME/.cargo/env"

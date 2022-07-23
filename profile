# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/profile.pre.bash" ]] && . "$HOME/.fig/shell/profile.pre.bash"

# gpg
export GPG_TTY=$(tty)

# rust
\. "$HOME/.cargo/env"

# golang
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# pnpm
export PNPM_HOME="/Users/frenco/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# local bin
export PATH="$HOME/.local/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/profile.post.bash" ]] && . "$HOME/.fig/shell/profile.post.bash"

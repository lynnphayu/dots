# gpg 
export GPG_TTY=$(tty)

# rust
\. "$HOME/.cargo/env"

# sonarcloud
export PATH="/usr/local/share/sonar-scanner-4.4.0.2170/bin:$PATH"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# local bin
export PATH="$HOME/.local/bin:$PATH"
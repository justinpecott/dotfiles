# Homebrew
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Node via n — installs to ~/.n, no sudo
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"

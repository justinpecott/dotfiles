# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# Node via fnm
eval "$(fnm env --use-on-cd --version-file-strategy=recursive --shell zsh)"
export NODE_PATH=$NODE_PATH:`npm root -g`

# OSX Colors
export CLICOLOR=1

# Tab Completions
autoload -U compinit
compinit

# Pure Prompt
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

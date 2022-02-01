alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias which="type -a"
alias ng="npm ls -g --depth=0"
alias nl="npm ls --depth=0"
set -gx PATH $HOME/bin $PATH
eval (/opt/homebrew/bin/brew shellenv)
set -gx HOMEBREW_GITHUB_API_TOKEN "SOME_TOKEN"
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"
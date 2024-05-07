# Better History
# https://martinheinz.dev/blog/110
# https://zsh.sourceforge.io/Doc/Release/Options.html (16.2.4 History)
setopt EXTENDED_HISTORY      # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY         # Share history between all sessions.
setopt HIST_IGNORE_ALL_DUPS  # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE     # Do not record an event starting with a space.
setopt HIST_VERIFY           # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY        # append to history file (Default)
setopt HIST_NO_STORE         # Don't store history commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history.
export HISTSIZE=4096
export SAVEHIST=4096
export HISTFILE=$HOME/.zsh_history
export HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"
export HIST_STAMPS="yyyy-mm-dd"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Enable colors
autoload -U colors
colors
export CLICOLOR=1

# Basic Setup
export VISUAL=vim
export EDITOR=$VISUAL
export PAGER='less'
export LESS=-Ri

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;91'

# General aliases
alias la='ls -a'
alias ll='la -lh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias path='echo $PATH | tr -s ":" "\n"' # pretty print the path
alias history='history -i'
alias which='type -a'

# Path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Brew
export HOMEBREW_GITHUB_API_TOKEN=''
alias brewdeps='brew list | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk ''{printf(" %s ", $0)}''; echo ""; done'

# Pyenv
# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# NVM
# https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Pure Prompt
# https://github.com/sindresorhus/pure
# Installed via brew
autoload -U promptinit; promptinit
prompt pure

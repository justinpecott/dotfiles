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
export LANG="en_US.UTF-8"

# Enable colors and completions
autoload -U colors && colors
autoload -Uz compinit && compinit
if (( $+commands[zed] )) && (( $+functions[compdef] )); then
  compdef _gnu_generic zed
fi
export CLICOLOR=1

# Basic Setup
export VISUAL=vim
export EDITOR=$VISUAL
export PAGER='less'
export LESS=-Ri

# Enable color in grep
alias grep='grep --color=auto'
export GREP_COLOR='1;91'

# General aliases
alias la='ls -a'
alias ll='la -lh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias path='echo $PATH | tr -s ":" "\n"' # pretty print the path
alias h='history 1'
alias which='type -a'

# Search shell history: hs <pattern>
hs() {
  if [[ -z "$1" ]]; then
    echo "Usage: hs <pattern>"
    return 1
  fi
  history 1 | grep -i -- "$1"
}

# Path
export PATH=/opt/homebrew/bin:/usr/local/bin:$PATH

# Brew
# https://gist.github.com/jamesmurdza/6e5f86bae7d3b3db4201a52045a5e477
if (( $+commands[brew] )); then
  alias brewdeps='brew deps --tree $(brew leaves)'
  alias brewdepsfull='brew deps --tree --installed'
  alias brewcleanup='brew autoremove'
fi

# Snowflake
if [[ -x /Applications/SnowSQL.app/Contents/MacOS/snowsql ]]; then
  alias snowsql='/Applications/SnowSQL.app/Contents/MacOS/snowsql'
fi

# Bring in the robots
if [[ -x /Users/justin/.claude/local/claude ]]; then
  alias claude="/Users/justin/.claude/local/claude"
fi

#[[ -f ~/.anthropic_api_key ]] && source ~/.anthropic_api_key
#[[ -f ~/.openai_api_key ]] && source ~/.openai_api_key
#[[ -f ~/.kagi_api_key ]] && source ~/.kagi_api_key

# Pure Prompt
# https://github.com/sindresorhus/pure
# Installed via brew
autoload -U promptinit && promptinit
if prompt -l 2>/dev/null | tr ' ' '\n' | grep -qx 'pure'; then
  prompt pure
fi

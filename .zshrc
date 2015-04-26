# General Options
setopt no_beep # don't beep on error
setopt auto_cd # cd by just typing the dirname
setopt pushd_ignore_dups # don't push multiple copies of the same directory onto the directory stack
setopt extended_glob # do stuff like ls **/foosetopt
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word  
setopt complete_in_word # Allow completion from within a word/phrase
setopt correct # spelling correction for commands

# History
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
export HISTSIZE=10000
export SAVEHIST=9000
export HISTFILE=$HOME/.zsh_history

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# ENABLE OSX Colors
export CLICOLOR=1

# Basic Setup
export EDITOR="subl -w"
export PAGER="less"

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# General aliases
alias la='ls -a'
alias ll='la -lh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

# Ruby
alias ruby='ruby -w'
alias rake="noglob rake"
export ri="--format ansi -T"
export RBENV_VERSION='2.2.0'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export M2_HOME=$HOME/opt/maven
export GRADLE_HOME=$HOME/opt/gradle
export CATALINA_HOME=$HOME/opt/tomcat
export TOMCAT_HOME=$CATALINA_HOME

# Path
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$M2_HOME/bin:$CATALINA_HOME/bin:$PATH

# MySQL
alias sql.start="mysql.server start"
alias sql.stop="mysql.server stop"
alias sql.status="mysql.server status"

# Nginx
# Conf: /usr/local/etc/nginx/nginx.conf
alias web.start="nginx"
alias web.stop="nginx -s stop"

# Tab Completions
autoload -U compinit
compinit

# Pure Prompt
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

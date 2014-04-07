# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Make vim the default editor
export EDITOR="vim"
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"
# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Larger bash history (allow 5000 entries; default is 500)
export HISTSIZE=5000
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd;exit:date:* --help"

# Dev environment
export LDFLAGS=-L/usr/local/opt/sqlite/lib
export CPPFLAGS=-I/usr/local/opt/sqlite/include
export ARCHFLAGS="-arch x86_64"
export JAVA_HOME=`/usr/libexec/java_home`
export NODE_PATH=/usr/local/lib/node
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

# Ruby
export RBENV_VERSION='2.1.1'
export ri="--format ansi -T"

# Pretty colors
export CLICOLOR=1

# General aliases
alias la='ls -a'
alias ll='la -lh'
alias lt='ll -rt'
alias larth='ls -larth'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ip="curl icanhazip.com"

# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."

# Ruby
alias ruby='ruby -w'

# postgres
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/log/postgres.log'

# Grab our gitprompt
if [ -f $HOME/.bash_gitprompt ]; then
    . $HOME/.bash_gitprompt
fi

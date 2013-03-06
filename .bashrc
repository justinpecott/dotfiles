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
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home
export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/opt/ruby/bin:/usr/local/share/python

# Ruby
export ri="--format ansi -T"

# Pretty colors
export CLICOLOR=1

# General aliases
alias la='ls -a'
alias ll='la -lh'
alias lt='ll -rt'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias top='top -ocpu'
alias ia="open $1 -a /Applications/iA\ Writer.app"

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."

# Ruby
alias ruby='ruby -w'

# Prompt with GIT status
function parse_git_dirty() {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ \1$(parse_git_dirty)/"
}

PS1='[\[\e[1;34m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0;1m\] \[\e[1;35m\]\w\[\e[0m\]\[\e[1;31m\]$(parse_git_branch)\[\e[0m\]]\$ '

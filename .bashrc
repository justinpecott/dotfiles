# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Environment
export EDITOR=vim
export PATH=$PATH:$HOME/bin

# When running two bash windows, allow both to write to the history, not one stomping the other
shopt -s histappend

# Remove duplicates from history
export HISTCONTROL="ignoredups"
export HISTIGNORE="&:ls:cd -:[bf]g:exit"

# Keep multiline commands as one command in history
shopt -s cmdhist

# Various Aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -al'
alias la='ls -a'
alias diffdir='diff -rq'
alias gem='sudo gem'

# Lets make with the pretty prompt
function parse_git_branch {
    git_branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    [ -n "${git_branch}" ] && git_branch=" (${git_branch})"
        echo "${git_branch}"
}
PS1='[\[\e[1;34m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0;1m\] \[\e[1;35m\]\W\[\e[0m\]\[\e[1;31m\]$(parse_git_branch)\[\e[0m\]]\$ '

# Git Completion
if [ -f ~/bin/git-completion.sh ]; then
    source ~/bin/git-completion.sh
fi


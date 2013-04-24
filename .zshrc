######################### colors are pretty ##########################
autoload -U colors
colors

######################### zsh options ################################
setopt ALWAYS_TO_END           # push that cursor on completions.
setopt AUTO_NAME_DIRS          # change directories to variable names
setopt AUTO_PUSHD              # push directories on every cd
DIRSTACKSIZE=20                # number of dirs on the stack
setopt NO_BEEP                 # self explanatory
zstyle ':completion:*:sudo:*' command-path ~/bin /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin

######################### history options ############################
HISTFILE=~/.history            # history file
HISTSIZE=10000                 # spots for duplicates/uniques
SAVEHIST=10000                 # unique events guarenteed
setopt APPEND_HISTORY          # don't overwrite
setopt SHARE_HISTORY           # share history between sessions
setopt EXTENDED_HISTORY        # store time in history
#setopt HIST_IGNORE_ALL_DUPS    # ignore duplicates of the previous event
setopt HIST_EXPIRE_DUPS_FIRST  # unique events are more usefull to me
setopt HIST_VERIFY             # Make those history commands nice

######################### editor #####################################
export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=less
bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey "^E" end-of-line
bindkey "^A" beginning-of-line

######################### grep #######################################
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

######################### aliases ####################################
alias ls='ls -G'
alias ll='ls -lh'
alias la='ls -la'
alias larth='ls -larth'
alias vi=vim
alias history='fc -l 1'

######################### compinit ###################################
autoload -U compinit
compinit

######################### rvm ########################################

######################### git functions ##############################
function parse_git_dirty() {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ \1$(parse_git_dirty)/"
}

######################### prompt #####################################
setopt PROMPT_SUBST
PROMPT='[%{$fg_bold[blue]%}%n%{$reset_color%}@%{$fg_bold[green]%}%m%{$reset_color%} %{$fg[magenta]%}%c%{$reset_color%}%{$fg[red]%}$(parse_git_branch)%{$reset_color%}]$ '


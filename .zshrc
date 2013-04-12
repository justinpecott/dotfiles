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
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

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
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -la'
alias larth='ls -larth'
alias vi=vim
alias history='fc -l 1'

######################### pajor aliases ##############################
#alias activenv='sudo /apollo/bin/runCommand -e $1 -a Activate'
#alias activhost='/apollo/bin/apolloHostControl --status Active'
#alias br='/bin/env -i /apollo/env/SDETools/bin/brazil-runtime-exec'
#alias clean='br rake tmp:clear && br rake log:clear && br rake assets:clean && rm db/schema.rb && rm -f log/*'
#alias coproj='~/bin/checkoutPrj.sh'
#alias p4addtree='~/bin/p4addtree.sh'
#alias p4untracked='find . -type f -print0 | xargs -0 p4 fstat >/dev/null'
#alias railserv='br rake assets:precompile && br rails server'
#alias stathost='/apollo/bin/apolloHostControl --status Host'
#alias vmssql='/apollo/bin/env_real /apollo/env/DCE-VMSMySQL/bin/mysql'

######################### pidgin fix #################################
export NSS_SSL_CBC_RANDOM_IV=0

######################### compinit ###################################
autoload -U compinit
compinit

######################### git goodies ################################
function parse_git_dirty() {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ \1$(parse_git_dirty)/"
}

######################### prompt #####################################
local user="%{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%}"
local pwd="%{$fg[blue]%}%~%{$reset_color%}"
PROMPT="[${user} ${pwd}]$ "
PROMPT="[%{$fg_bold[magenta]%}%n%{$reset_color%}@%{$fg_bold[blue]%}%m%{$reset_color%} %{$fg[cyan]%}%c%{$reset_color%}%{$fg[red]%}$(parse_git_branch)%{$reset_color%}]$ "
#PS1="[\[\e[1;34m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0;1m\] \[\e[1;35m\]\w\[\e[0m\]\[\e[1;31m\]$(parse_git_branch)\[\e[0m\]]\$ "

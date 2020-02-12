alias ls="/opt/freeware/bin/ls -sFh --color=auto"
alias ll="ls -ltr"
alias wget="wget --no-check-certificate"
alias view="vim -R"
alias cdpp="cd /datawhse/prod/procs/"
alias cdps="cd /datawhse/prod/scripts/"
alias cdpl="cd /datawhse/prod/logs/"
alias cdpd="cd /datawhse/prod/data/export/"
alias cdt="cd /datawhse/prod/data/export/temp/tim/"
alias cdb="cd /datawhse/prod/bin/"
alias cdu="cd /datawhse/prod/util/"

# dev
alias cddp="cd /datawhse/dev/procs/"
alias cdds="cd /datawhse/dev/scripts/"
alias cddl="cd /datawhse/dev/logs/"

function up {
        cd $(printf '../%.0s' $(seq 1 $1))
}
typeset -xf up

function parse_git_branch {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
typeset -xf parse_git_branch

#####################################
# Establish vi as the default editor
#  and set command line and session
#  options
#####################################
if [ -t 0 -a -t 1 -a -t 2 ]; then # interactive shell
        stty erase ^?
        set -o vi
        set -o multiline
        eval `dircolors $HOME/.dircolors`
#       export PS1=$(printf '\033]0;${CURRENT_HOST}\:${PWD}\007\033[33m$USER@$CURRENT_HOST\033[0m\:\033[36m$PWD/ \033[0m')
#       export PS1=$(printf '\033]0;${CURRENT_HOST}\:${PWD}\007\033[33m$USER@$CURRENT_HOST\033[0m\:\033[36m$PWD\n\033[0m$ ')
#       export PS1=$(printf '\033]0;${CURRENT_HOST}\:${PWD}\007\033[33m$USER@$CURRENT_HOST\033[0m\:\033[36m$PWD\033[0m$(parse_git_branch)\n$ ')
        export PS1=$(printf '\033]0;${CURRENT_HOST}\:${PWD}\007\033[38;5;84m$USER@$CURRENT_HOST\033[0m\:\033[36m$PWD\033[0m$(parse_git_branch)\n$ ')


fi

#####################################
# Terminal Setup
#   If termdef command returns terminal
#    type (i.e. a non NULL value),
#    set TERM to the returned value,
#    else set TERM to default lft.
#####################################
#TERM_DEFAULT=lft
#TERM=`termdef`
#export TERM=${TERM:-$TERM_DEFAULT}
export TERM=xterm-256color

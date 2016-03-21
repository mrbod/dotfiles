alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cal='cal -m'
alias pylab='ipython --pylab'
alias gh=hg
alias gti=git
alias vmi=vim
alias vi=vim
# alias vim=nvim
alias :e=vim
alias :E=vim

# completion
source /usr/share/bash-completion/bash_completion
gitcontrib=/usr/doc/git-*/contrib
source $gitcontrib/completion/git-completion.bash
source $gitcontrib/completion/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"
export GIT_PS1_SHOWCOLORHINTS=1

function __gitroot()
{
    GR=$(git root 2>/dev/null)
    if [ "$GR" == $(basename $(pwd)) ]
    then
        GR=
    fi
    if ! [ -z $GR ]
    then
        echo "$GR "
    fi
}

#export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ "'
export PROMPT_COMMAND='__git_ps1 "\[\033]0;\u@\h: \w\007\]\W" "\\\$ " " [$(__gitroot)%s]"'
#export PROMPT_COMMAND='PS1="\[\033]0;\u@\h: \w\007\]\W\\$ "'

source $HOME/.cd_func.sh
alias cd=cd_func


if uname | grep CYGWIN > /dev/null
then
	LSIGNORE='-I NTUSER.DAT\*'
	MSVC="$HOME/.dotfiles/cl.sh"
	if [ -r "$MSVC" ]
	then
		source "$MSVC"
	fi
fi
alias ls="command ls --color=auto $LSIGNORE"
alias ll='ls -l'
alias lt='ls -ltr'
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

# history
shopt -s histappend
shopt -s cmdhist
HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '

# completion
source /usr/share/bash-completion/bash_completion
if ! uname | grep 'MING' >/dev/null
then
	source "$HOME/.dotfiles/gitprompt.sh"
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"
export GIT_PS1_SHOWCOLORHINTS=1

# prompt
function __gitroot()
{
    tl=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ -n "$tl" ]
    then
        gr=$(realpath "$tl")
        rp=$(realpath "$PWD")
        if [ "$gr" != "$rp" ]
        then
            bntl=$(basename "$tl")
            echo "$bntl "
        fi
    fi
}
#export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ "'
export PROMPT_COMMAND='history -a; __git_ps1 "\[\033]0;\u@\h: \w\007\]\W" "\\\$ " " [$(__gitroot)%s]"'
#export PROMPT_COMMAND='PS1="\[\033]0;\u@\h: \w\007\]\W\\$ "'

FILE="$HOME/.dotfiles/cd_func.sh"
if [ -f "$FILE" ]
then
    source "$FILE"
    alias cd=cd_func
fi

FILE="$HOME/.dotfiles/transfer.sh"
[ -f "$FILE" ] && source "$FILE"

FILE="$HOME/.dotfiles/bashrc_local"
[ -f "$FILE" ] && source "$FILE"


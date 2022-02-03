alias ls="command ls --color=auto $LSIGNORE"
alias ll='ls -l'
alias lt='ls -ltr'
alias grep='grep --color=auto'
alias cal='cal -m -w'
alias pylab='ipython --pylab'
alias gh=hg
alias gti=git
alias vmi=vim
alias vi=vim
# alias vim=nvim
alias :e=vim
alias :E=vim
alias p0='radio stop'
alias p1='radio p1'
alias p2='radio p2'
alias p3='radio p3'
alias p4='radio p4'

# history
shopt -s histappend
shopt -s cmdhist
HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '

# completion
source /usr/share/bash-completion/bash_completion
if which pandoc >/dev/null 2>&1
then
    eval "$(pandoc --bash-completion)"
fi

if ! uname | grep 'MING' >/dev/null
then
    source "$HOME/.dotfiles/gitprompt.sh"
fi

if [ "$TERM" == "xterm" ]
then
    export TERM=xterm-256color
fi

FILE="$HOME/.dotfiles/cd_func.sh"
[ -f "$FILE" ] && source "$FILE" && alias cd=cd_func

FILE="$HOME/.dotfiles/transfer.sh"
#[ -f "$FILE" ] && source "$FILE"

FILE="$HOME/.dotfiles/bashrc_local"
[ -f "$FILE" ] && source "$FILE"


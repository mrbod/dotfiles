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

if [ "$TERM" == "xterm" ]
then
    export TERM=xterm-256color
fi

FILE="$HOME/.dotfiles/cd_func.sh"
[ -f "$FILE" ] && source "$FILE" && alias cd=cd_func

FILE="$HOME/.dotfiles/transfer.sh"
[ -f "$FILE" ] && source "$FILE"

FILE="$HOME/.dotfiles/bashrc_local"
[ -f "$FILE" ] && source "$FILE"


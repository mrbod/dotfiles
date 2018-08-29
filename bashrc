if uname | grep CYGWIN > /dev/null
then
	LSIGNORE='-I NTUSER.DAT\*'
	MSVC="$HOME/.dotfiles/cl.sh"
	if [ -r "$MSVC" ]
	then
		source "$MSVC"
	fi

	export SVN_SSH=ssh
fi
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

# history
shopt -s histappend
shopt -s cmdhist
HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '

# completion
source /usr/share/bash-completion/bash_completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
if ! uname | grep 'MING' >/dev/null
then
	source "$HOME/.dotfiles/gitprompt.sh"
fi

if [ "$TERM" == "xterm" ]
then
    export TERM=xterm-256color
fi

source "$HOME/.dotfiles/cd_func.sh"
alias cd=cd_func

source "$HOME/.dotfiles/transfer.sh"


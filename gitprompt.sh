gitcontrib=/usr/doc/git-*/contrib
source $gitcontrib/completion/git-completion.bash 2>/dev/null
source $gitcontrib/completion/git-prompt.sh 2>/dev/null

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
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

#export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
#export PROMPT_COMMAND='history -a; __git_ps1 "\[\033]0;\u@\h: \w\007\]\W" "\\\$ " " [$(__gitroot)%s]"'
export PROMPT_COMMAND='history -a; __git_ps1 "\[\033]0;\u@\h: \w\007\]\W" "\\\$ "'


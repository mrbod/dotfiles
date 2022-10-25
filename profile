[ -n "$PERS_PROFILE_READ" ] && return 0
export PERS_PROFILE_READ=yes

export LD_LIBRARY_PATH=~/lib

MYPATH="/sbin:/usr/sbin:/usr/local/sbin:$HOME/bin:$HOME/.local/bin"
MYPATH="$MYPATH:/opt/mingw64/bin"
MYPATH="$MYPATH:$HOME/.cargo/bin"
MYPATH="$MYPATH:."
export PATH="$MYPATH:$PATH"

grep -q -i microsoft /proc/version && export IS_WSL=yes || export IS_WSL=no

export LANG=en_US.UTF-8

export LESS=FMRX
export MANPAGER=less

export EDITOR=vim
export BROWSER=firefox

export CDPATH=.

export CPPUTEST_HOME=~/prog/cpputest
export GTEST_BASE=~/googletest

if [ -z "$SSH_AGENT_PID" ]
then
    eval $(ssh-agent) > /dev/null
fi


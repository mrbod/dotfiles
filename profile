[ -n "$PERS_PROFILE_READ" ] && return 0
export PERS_PROFILE_READ=yes

#export LD_LIBRARY_PATH=~/lib
MYPATH="/sbin:/usr/sbin:/usr/local/sbin:$HOME/bin:$HOME/.local/bin"
MYPATH="$MYPATH:/opt/mingw64/bin"
MYPATH="$MYPATH:/opt/passenger-6.0.19/bin"
MYPATH="$MYPATH:~/.cargo/bin"
MYPATH="~/.rustup/shims:$MYPATH"
MYPATH="$MYPATH:."
export PATH="$MYPATH:$PATH"

export TZ=CET

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_PAPER=A4

export LESS=FMRX
export MANPAGER=less

export EDITOR=vim
export BROWSER=firefox

export CDPATH=.

export CPPUTEST_HOME=~/prog/cpputest
export GTEST_BASE=~/googletest

if [ -f ~/.Xresources ]
then
    xrdb -merge ~/.Xresources
fi

if [ -z "$SSH_AGENT_PID" ]
then
    eval $(ssh-agent) > /dev/null
fi

export GDK_SCALE=1 #GWSL

. "$HOME/.cargo/env"


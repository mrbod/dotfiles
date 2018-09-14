export LD_LIBRARY_PATH=~/lib

PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
PATH=$PATH:/usr/libexec/xscreensaver
PATH=$PATH:/opt/mingw64/bin
PATH=$PATH:~/bin
PATH=$PATH:~/.local/bin
PATH=$PATH:.
export PATH

export LANG=en_US.UTF-8

export LESS=FMRX

export EDITOR=vim
export BROWSER=firefox

export CPPUTEST_HOME=~/prog/cpputest
export GTEST_BASE=~/googletest

if [ -z "$SSH_AGENT_PID" ]
then
	eval $(ssh-agent) > /dev/null
fi


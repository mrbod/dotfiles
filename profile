export LD_LIBRARY_PATH=~/lib

PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
PATH=$PATH:/usr/libexec/xscreensaver
if uname | grep CYGWIN > /dev/null
then
    PATH=~/bin:$PATH:.
else
    PATH=$PATH:/opt/mingw64/bin
    PATH=$PATH:~/bin
    PATH=$PATH:~/.local/bin
    PATH=$PATH:.
fi
export PATH

export LANG=en_US.UTF-8

export LESS=FMRX
export MANPAGER=less

export EDITOR=vim
export BROWSER=firefox

export CDPATH=.

export CPPUTEST_HOME=~/prog/cpputest
export GTEST_BASE=~/googletest

if uname | grep CYGWIN > /dev/null
then
	if ! ps | grep 'ssh-pageant' > /dev/null
	then
		eval $(ssh-pageant)
	fi
else
	if [ -z "$SSH_AGENT_PID" ]
	then
		eval $(ssh-agent) > /dev/null
	fi
fi


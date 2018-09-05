export LD_LIBRARY_PATH=~/lib

PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
PATH=$PATH:/usr/libexec/xscreensaver
if uname | grep CYGWIN > /dev/null
then
	PATH=~/bin:$PATH:.
else
	PATH=$PATH:~/bin:.
fi
export PATH

export LANG=en_US.UTF-8

export LESS=FMRX

export EDITOR=vim
export BROWSER=firefox

export CDPATH=.

export CPPUTEST_HOME=~/prog/cpputest

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


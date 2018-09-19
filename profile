export LD_LIBRARY_PATH=~/lib

PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
#PATH=$PATH:/opt/mxe/usr/bin
PATH=$PATH:/opt/mingw64/bin
PATH=$PATH:/usr/libexec/xscreensaver
PATH=$PATH:~/bin:.
export PATH

export LANG=en_US.UTF-8

export LESS=FMRX

export EDITOR=vim
export BROWSER=firefox

export CPPUTEST_HOME=~/prog/cpputest

if [ -z "$SSH_AGENT_PID" ]
then
	eval $(ssh-agent) > /dev/null
fi


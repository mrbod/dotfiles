export LD_LIBRARY_PATH=~/lib

PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
PATH=$PATH:/usr/lib64/java/bin
PATH=$PATH:/opt/mxe/usr/bin
PATH=$PATH:/opt/arm/arm-2013.05/bin
PATH=$PATH:/opt/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin
PATH=$PATH:/opt/avr8-gnu-toolchain-linux_x86_64/bin
PATH=$PATH:/usr/libexec/xscreensaver
PATH=$PATH:~/bin:.
export PATH

export LANG=en_US.UTF-8

export LESS=FMRX

export EDITOR=vim
export BROWSER=firefox

export CDPATH=.

export CPPUTEST_HOME=~/prog/cpputest

source ~/.bashrc

lsfst >/dev/null 2>&1 &

if tty | grep 'tty1' > /dev/null
then
    if ! ps -u $(whoami) -o comm | grep '\<startx\>' > /dev/null
    then
        ssh-agent startx
    fi
fi


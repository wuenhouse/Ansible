#!/bin/bash
#

# Install libevent
cd /tmp/

tar -xvzf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
ret=$?
if [ ${ret} -eq 0 ]; then
    sudo make
    sudo make install
    ret=$?
    if [ ${ret} -eq 0 ]; then
        echo "Successfully Install libevent"
    else
        echo "Fail to make && make install libevent"
        exit 1
    fi
else
    echo "Fail to configure libevent"
    exit 2
fi

tar -xvzf tmux-2.2.tar.gz
cd tmux-2.2
./configure 
ret=$?
if [ ${ret} -eq 0 ]; then
    sudo make
    sudo make install
    ret=$?
    if [ ${ret} -eq 0 ]; then
        echo "Successfully Install Tmux"
        echo 'export LD_LIBRARY_PATH=/usr/local/lib' >> /etc/profile
        `source /etc/profile`
    else
        echo "Fail to make && make install Tmux"
        exit 3
    fi
else
    echo "Fail to configure Tmux"
    exit 4
fi

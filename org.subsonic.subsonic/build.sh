#!/bin/bash

install -m 755 /home/source/rc.local /etc

if [ $RAINBOW_ARCHITECTURE = "x86_64" ]
then
    apt-get update
    apt-get install openjdk-7-jre -y
    wget http://subsonic.org/download/subsonic-6.0.deb -P /tmp
    dpkg -i /tmp/subsonic-6.0.deb
    rm /tmp/subsonic-6.0.deb
    update-rc.d -f subsonic remove
else
    echo "No ARM support"
fi

exit 0

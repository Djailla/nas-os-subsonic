#!/bin/bash

install -m 755 /home/source/rc.local /etc

apt-get update
apt-get install openjdk-7-jre -y
wget http://subsonic.org/download/subsonic-6.0.deb -P /tmp
dpkg -i /tmp/subsonic-6.0.deb
rm /tmp/subsonic-6.0.deb

exit 0

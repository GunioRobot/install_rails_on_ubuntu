#!/bin/bash

# FIRST: install java
aptitude -y install jamvm default-jre daemon java-common

# FROM: http://hudson-ci.org/debian/

wget -O /tmp/key http://hudson-ci.org/debian/hudson-ci.org.key
sudo apt-key add /tmp/key
wget -O /tmp/hudson.deb http://hudson-ci.org/latest/debian/hudson.deb
sudo dpkg --install /tmp/hudson.deb
#apt-get update; apt-get install hudson

#!/usr/bin/env bash

#注意python3只支持python3.4
#https://github.com/samjabrahams/tensorflow-on-raspberry-pi

sudo apt-get install python3-pip python3-dev

wget https://github.com/samjabrahams/tensorflow-on-raspberry-pi/releases/download/v1.1.0/tensorflow-1.1.0-cp34-cp34m-linux_armv7l.whl
sudo pip3 install tensorflow-1.1.0-cp34-cp34m-linux_armv7l.whl

sudo pip3 uninstall mock
sudo pip3 install mock
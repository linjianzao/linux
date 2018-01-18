#!/usr/bin/env bash

#因为 https://github.com/oarriaga/face_classification 只支持python3。
#所以tensorflow以python3安装

sudo apt-get install python3-pip python3-dev python-virtualenv

#使用virtualenv,并指定python3
virtualenv  ~/env/tensorflow -p python3


#升级pip
easy_install -U pip

#安装tensorflow,python2和python3 并存的时候使用
pip install tensorflow
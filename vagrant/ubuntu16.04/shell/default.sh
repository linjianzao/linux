#!/usr/bin/env bash

#注意事项:不要存放任何密码或者相关配置文件，包括ssh key之类的东西。

#配置ubuntu 用户的pip源
echo 'ubuntu user begin ................'
if [[ ! -d "/home/ubuntu/.pip/" ]]; then  
    mkdir ~/.pip/
fi 
cp /vagrant/conf/pip/pip.conf ~/.pip/pip.conf

if [[ ! -d "/home/ubuntu/env/" ]]; then  
    mkdir ~/env
fi 

cd ~/env
virtualenv --no-site-packages localenv
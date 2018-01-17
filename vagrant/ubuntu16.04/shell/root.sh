#!/usr/bin/env bash

#注意事项:不要存放任何密码或者相关配置文件，包括ssh key之类的东西。

sudo cp /vagrant/conf/repo/sources.list /etc/apt/sources.list -r 

sudo apt-key add /vagrant/conf/repo/nginx_signing.key

sudo add-apt-repository ppa:ondrej/php 

sudo apt-get update -y

sudo apt-get upgrade -y

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

#同步时间为上海
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo apt-get install ntpdate -y
sudo ntpdate time.nist.gov


#nodejs
sudo apt-get install -y nodejs
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org


#nginx 
sudo apt-get install nginx -y
sudo cp /vagrant/conf/nginx/nginx.conf /etc/nginx/nginx.conf -r 
sudo cp /vagrant/conf/nginx/default.conf /etc/nginx/conf.d/default.conf -r

sudo service nginx restart 


#php
sudo apt-get install php7.1 php7.1-common php7.1-fpm php7.1-cli php7.1-mysql php7.1-pdo php7.1-gd -y 
sudo cp /vagrant/conf/php/php.ini /etc/php/7.1/fpm/php.ini -r
sudo cp /vagrant/conf/php/php-fpm/www.conf /etc/php/7.1/fpm/pool.d/www.conf -r
sudo systemctl restart php7.1-fpm.service 

#pip
sudo apt-get install python-pip -y
sudo apt-get install libmysqlclient-dev -y

#redis
sudo apt-get install redis-server -y

sudo pip install virtualenv

#配置vim
sudo apt-get install vim -y



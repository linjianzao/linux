#!/usr/bin/env bash

#注意事项:不要存放任何密码或者相关配置文件，包括ssh key之类的东西。

#同步时间为上海
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo yum install ntpdate -y
sudo ntpdate time.nist.gov


sudo cp /vagrant/conf/aliyun.repo /etc/yum.repos.d/aliyun.repo -r 
sudo curl --silent --location https://rpm.nodesource.com/setup_7.x | sudo bash -
sudo cp /vagrant/conf/nginx/nginx.repo /etc/yum.repos.d/nginx.repo -r 

sudo rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
sudo rpm -Uvh https://repo.mysql.com//mysql57-community-release-el6-11.noarch.rpm

sudo yum makecache
sudo yum -y install gcc make gcc-c++ openssl-devel wget
sudo yum install vim -y
sudo yum install git -y 
sudo yum install php71w php71w-common php71w-fpm php71w-cli php71w-mysql php71w-pdo php71w-gd -y 

###mysql
sudo yum install mysql-community-common mysql-community-client mysql-community-devel -y


####PHP配置
sudo service php-fpm start 


####nginx配置

sudo yum install nginx -y
sudo cp /vagrant/conf/nginx/nginx.conf /etc/nginx/nginx.conf -r 
sudo cp /vagrant/conf/nginx/php.zuipin.ljz.yipicha.com.conf /etc/nginx/conf.d/php.zuipin.ljz.yipicha.com.conf -r 

sudo service nginx restart 

###nodejs

sudo yum install nodejs -y

sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
sudo cnpm install -g cross-env

##golang
sudo rm -rf /home/vagrant/go
sudo cp /vagrant/install_package/go.tar.gz  /home/vagrant/go.tar.gz -r 
sudo tar zxvf /home/vagrant/go.tar.gz
sudo rm -rf /usr/local/go
sudo mv /home/vagrant/go  /usr/local/go
echo  'PATH=$PATH:/usr/local/go/bin' >/home/vagrant/.bashrc
source /home/vagrant/.bashrc
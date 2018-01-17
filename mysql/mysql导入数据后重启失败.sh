导入mysql5.1创建的表的数据--->mysql5.7的库。然后发现重启mysql就失败了。
这是因为备份的语句里都其他mysql自带的数据库，备份的问题。
解决：
1.卸载mysq
sudo apt remove --purge mysql-server-5.7
sudo apt-get remove mysql-common
sudo apt-get autoremove
sudo apt-get autoclean

2.删除mysql数据库。 卸载mysql并不会删除数据库，一般在/var/lib/mysql
rm -rf /var/lib/mysql

3.重新安装mysql
sudo apt-get install mysql-server -y
sudo apt-get install mysql-client -y
sudo apt-get install libmysqlclient-dev -y

4.删除要导入的备份数据里不必要的数据.通过搜索CREATE DATABASE

5.重新导入数据

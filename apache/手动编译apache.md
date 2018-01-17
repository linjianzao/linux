
http://blog.csdn.net/victor_py/article/details/51500158 <br/>
http://apr.apache.org/download.cgi<br/>
sudo apt-get install libpcre3 libpcre3-dev  <br/>

./configure -prefix=/usr/local/apache2 --enable-deflate --enable-expires --enable-headers --enable-modules=most --enable-so --with-mpm=worker --enable-rewrite --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util --with-pcre=/usr/local/pcre
<br/>
配置apache + php-fpm: http://www.cnblogs.com/lxdd/p/5633810.html<br/>

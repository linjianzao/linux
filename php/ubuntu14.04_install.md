<h4>更新ubuntu</h4>
163源: [http://mirrors.163.com/.help/ubuntu.html](http://mirrors.163.com/.help/ubuntu.html) <br/>
修改源: <code>sudo vi /etc/apt/sources.list</code> (删除原有的内容然后写入163的源)<br/>
更新源: <code>sudo apt-get update</code> <br/>
更新软件:<code> sudo apt-get upgrade</code> <br/>
<code>sudo apt-get install python-pip python-dev build-essential </code><br/>
开启ssh: <code>sudo apt-get install openssh-server</code> <br/>
ssh启动: <code>sudo /etc/init.d/ssh start </code><br/>
ssh关闭: <code>sudo /etc/init.d/ssh stop </code><br/>
安装vim: 
安装nginx: <code>sudo apt-get install nginx</code><br/>
nginx配置文件: <code>sudo vim /etc/nginx/sites-available/default </code><br/>
安装php-fpm和php: <code>sudo apt-get install php5-fpm php5-gd php5-cli php5-curl php5-mcrypt php5-mysql</code><br/>
php-fpm配置文件:<code>sudo vim /etc/php5/fpm/php-fpm.conf</code><br/>
php-fpm重启: 直接kill掉进程然后php5-fpm <br/>
php.ini:<code>sudo vim /etc/php5/fpm/php.ini </code> (使用phpinfo 查看)<br/>
配置nginx解析php:<br/>
<pre><code>
location ~ \.php$ {
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        # NOTE: You should have "cgi.fix_pathinfo = 0;" in php.ini

        # With php5-cgi alone:
        #fastcgi_pass 127.0.0.1:9000;
        # With php5-fpm:
        fastcgi_pass unix:/var/run/php5-fpm.sock;
        fastcgi_index index.php;
        include fastcgi_params;
}
</code></pre><br/>

安装mysql: <code>sudo apt-get install mysql-server mysql-client</code><br/>
配置文件: <code>sudo vim /etc/mysql/my.cnf </code><br/>
配置外网访问:<br/>
<pre><code>
my.cnf里注释掉: #bind-address = 127.0.0.1
重启mysql: sudo service mysql restart
非本机访问配置: 登录root账号然后执行
grant all privileges on *.* to 'user'@'%' identified by '123456';
flush privileges;

</code></pre>

memcached:<code> sudo apt-get install memcached </code><br/>
php-memcache:<code> sudo apt-get install php5-memcache </code><br/>
记得重启php-fpm

fastcgi_connect_timeout 300;
fastcgi_send_timeout 300;
fastcgi_read_timeout 300;
fastcgi_buffer_size 64k;
fastcgi_buffers 4 64k;
fastcgi_busy_buffers_size 128k;
fastcgi_temp_file_write_size 128k;
fastcgi_intercept_errors on;


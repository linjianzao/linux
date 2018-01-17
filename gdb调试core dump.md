<a href="https://github.com/hilojack/hilojack.github.io/blob/master/_posts/c-debug-coredump.md">参考链接</a><br/>
生成core文件:<br/>
<code>
sudo su - 
echo '/tmp/core-%e.%p' > /proc/sys/kernel/core_pattern
echo 0 > /proc/sys/kernel/core_uses_pid
ulimit -c unlimited
</code><br/>
允许php-fpm生成coredump文件<br/>
<code>ps aux |grep php-fpm</code><br/>
master process主进程可以看到php-fpm的配置文件路径<br/>
/etc/php5/fpm/php-fpm.conf<br/>
有个配置是include=/etc/php5/fpm/pool.d/*.conf<br/>
所以配置文件目录: /etc/php5/fpm/pool.d/www.conf<br/>
<code> rlimit_core = unlimited </code><br/>
重启php-fpm： <code>sudo kill -9 $(ps -ef|grep php-fpm|gawk '$0 !~/grep/ {print $2}' |tr -s '\n' ' ')</code><br/>
然后在/tmp/目录下就可以找到code文件<br/>
<code>sudo gdb php5-fpm /tmp/core-xxx.xxx</code><br/>
这样就可以看到php5-fpm哪里出问题了<br/>

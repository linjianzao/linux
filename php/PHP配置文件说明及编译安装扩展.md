ubuntu下<br/>
php配置存储目录/etc/php5<br/>
进去后会有三个目录cli、fpm、mods-available<br/>
cli: 如果你使用命令行执行php，那么加载的php.ini是这边的<br/>
fpm: 如果你用php-fpm,那么php.ini就是在/etc/php5/fpm/php.ini<br/> 
mods-available: 存储扩展.so<br/>
命令行执行 <code>php -i |grep php.ini </code>,就可以看到命令行下加载php.ini<br/>
web访问 <code>phpinfo()</code> 可以看到web访问加载的php.ini<br/>
当你安装第三方扩展后需要把 xxx.so 文件放到mods-available<br/>
并且要在/etc/php5/fpm/conf.d 和 /etc/php5/cli/conf.d 添加软连接<br/>
<code>ln -s ../../mods-available/xxx.ini /etc/php5/fpm/conf.d/20-xxx.ini </code>
<code>ln -s ../../mods-available/xxx.ini /etc/php5/cli/conf.d/20-xxx.ini </code>
20-xxx.ini 前面的20应该是加载优先级,随便设置个数字就好了<br/>
ln [参数][源文件或目录][目标文件或目录]<br/>
<br/>
ubuntu 默认没有phpize <br/>
<code> sudo apt-get install php5-dev </code><br/>
以xdebug为例:<br/>
<code>
cd xdebug-2.2.5
phpize
./configure --enable-xdebug 
make
make install
</code><br/>
![xdebug编译完成](/image/xdebug_compile.png)

编译完成后会显示so文件生成目录和 PHP扩展存放目录<br/>
一般生成的 xxx.so文件在 xdebug-2.2.5/modules/xxx.so ,也就是你编译目录的modules文件夹下<br/>
扩展目录: /usr/lib/php5/20121212/<br/>
把xxx.so拷贝到扩展目录里<br/>
然后在/etc/php5/mods-available/xxx.ini 写配置<br/>
最后添加cli和fpm的软连接<br/>
<code>ln -s ../../mods-available/xxx.ini /etc/php5/fpm/conf.d/20-xxx.ini </code>
<code>ln -s ../../mods-available/xxx.ini /etc/php5/cli/conf.d/20-xxx.ini </code>

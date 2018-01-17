<h3>源安装</h3>
注意事项：  
1.需要彻底删除原来的PHP <a href="http://www.51ou.com/browse/Ubuntu/59890.html">http://www.51ou.com/browse/Ubuntu/59890.html</a>  
2.如果你直接用 apt-get install php5-mcrypt 安装，那么默认是安装5.5的会导致多版本各种问题，所以使用apt-get install php5.6-mcrypt  
<pre><code>   
LC_ALL=C.UTF-8   
add-apt-repository ppa:ondrej/php   
apt-get update  
apt-get install  php5.6  
apt-get install  php5.6-fpm  
apt-get install  php5.6-curl php5.6-gd php5.6-mcrypt php5.6-mysql php5.6-memcache php5.6-json php5.6-xml php5.6-mbstring php5.6-zip
</code></pre>

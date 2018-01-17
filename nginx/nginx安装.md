<h3>官方安装</h3>
https://www.nginx.com/resources/wiki/start/topics/tutorials/install/


<h3>源安装</h3>
注意事项： 
1.需要彻底删除原来的nginx: <a href="http://blog.csdn.net/u010571844/article/details/50819704">http://blog.csdn.net/u010571844/article/details/50819704</a>
<pre>
add-apt-repository ppa:nginx/stable
apt-get update
apt-get install nginx
</pre>

<br/>
apt-get install libxml2  <br/>
apt-get install libxslt1-dev  <br/>
apt-get install libgd-dev <br/>
apt-get install libgeoip-dev <br/>
apt-get install libpcre3 libpcre3-dev <br/>
apt-get install openssl libssl-dev <br/>
apt-get install libgeoip-dev <br/>

查看编译参数: <code>nginx -V </code>
<h3>编译安装</h3>

安装包<a href="http://nginx.org/download/">http://nginx.org/download/</a><br/>

步骤1:
<pre><code> 
./configure \
--with-cc-opt='-g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -D_FORTIFY_SOURCE=2' \
--with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro' \
--prefix=/usr/local/nginx \
--conf-path=/usr/local/nginx/nginx.conf  \
--pid-path=/usr/local/nginx/nginx.pid \
--with-debug \
--with-pcre-jit \
--with-ipv6 \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_realip_module \
--with-http_addition_module \
--with-http_dav_module \
--with-http_geoip_module \
--with-http_gzip_static_module \
--with-http_image_filter_module \
--with-http_spdy_module \
--with-http_sub_module \
--with-http_xslt_module \
--with-mail \
--with-mail_ssl_module 

</code></pre>
<br/>
<br/>
步骤2:<code>
make 
</code>
<br/>
<br/>
步骤3:<code>
make install
</code>

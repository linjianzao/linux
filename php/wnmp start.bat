@echo off

echo Starting PHP FastCGI...
start D:\wnmp\php-5.6.29\php-cgi.exe -b 127.0.0.1:9000 -c D:\wnmp\php-5.6.29\php.ini
echo PHP FastCGI success

echo Starting nginx
cd\
D:
cd D:\wnmp\nginx\
start D:\wnmp\nginx\nginx.exe -c D:\wnmp\nginx\conf\nginx.conf
echo nginx success

echo Starting memcached
start D:\wnmp\memcached\memcached.exe -m 512
echo memcached success

exit
@echo off

echo Stopping nginx...  
taskkill /F /IM nginx.exe > nul

echo Stopping PHP FastCGI...
taskkill /F /IM php-cgi.exe > nul

echo Stopping memcached...
taskkill /F /IM memcached.exe > nul
REM D:\wnmp\memcached\memcached.exe -d stop

exit
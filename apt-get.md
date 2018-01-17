<a href="http://askubuntu.com/questions/20725/gpg-error-the-following-signatures-couldnt-be-verified-because-the-public-key">public key is not available</a>
W: GPG error: http://nginx.org trusty Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY ABF5BD827BD9BF62<br/>
<code>
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62 
  apt-get update
</code><br/>
记得--recv-keys后面的内容是你报错的 NO_PUBKEY 后面的key<br/>
搜索软件<code>apt-cache search  nginx</code><br/>
展示软件版本<code>apt-cache show  nginx</code><br/>
安装指定版本<code>sudo apt-get install nginx=1.8.1-1~trusty</code><br/>


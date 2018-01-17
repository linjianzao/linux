#!/usr/bin/env bash

#注意事项:不要存放任何密码或者相关配置文件，包括ssh key之类的东西。

#配置ubuntu 用户的pip源
echo 'ubuntu user begin ................'
if [[ ! -d "/home/ubuntu/.pip/" ]]; then  
    mkdir ~/.pip/
fi 
cp /vagrant/conf/pip/pip.conf ~/.pip/pip.conf

#配置vim开始
if [[ ! -f "/home/ubuntu/.vimpkg/bin/apt-vim" ]]; then  
    curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh 
fi 


if [[ ! -d "/home/ubuntu/.vim/autoload" ]]; then  
    mkdir -p ~/.vim/autoload ~/.vim/bundle
fi 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


apt-vim install -y https://github.com/scrooloose/nerdtree.git


cd ~/.vim
git clone https://github.com/tomasr/molokai.git
cp molokai/colors/ . -r
rm -rf molokai

cp /vagrant/conf/vim/vimrc ~/.vimrc -rf

#配置vim结束
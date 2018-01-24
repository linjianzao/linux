#!/usr/bin/env bash

sudo apt-get install python3-pip python3-dev python-virtualenv -y

https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.2.0-cp35-cp35m-linux_x86_64.whl

#使用virtualenv,并指定python3
virtualenv  ~/env/tensorflow -p python3

echo 'source env/tensorflow/bin/activate' >> .bashrc


####pip安装开始##
#注意python3只支持python3.4
#https://github.com/samjabrahams/tensorflow-on-raspberry-pi

wget https://github.com/samjabrahams/tensorflow-on-raspberry-pi/releases/download/v1.1.0/tensorflow-1.1.0-cp34-cp34m-linux_armv7l.whl
sudo pip3 install tensorflow-1.1.0-cp34-cp34m-linux_armv7l.whl

sudo pip3 uninstall mock
sudo pip3 install mock

####pip安装结束##



##手动编译开始###
virtualenv  ~/env/tensorflow -p python3
git clone https://github.com/tensorflow/tensorflow.git

sudo apt-get install pkg-config zip g++ zlib1g-dev unzip
sudo apt-get install python3-pip python3-numpy swig python3-dev
sudo apt-get install libcurl3 libcurl3-dev -y
sudo apt-get install libjpeg-dev -y



pip3 install wheel
pip3 install protobuf

sudo apt-get install gcc-4.8 g++-4.8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 100
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 100

wget https://github.com/bazelbuild/bazel/releases/download/0.4.5/bazel-0.4.5-dist.zip
unzip -d bazel bazel-0.4.5-dist.zip


sudo apt-get install  libjpeg-dev libpng-dev libgif-dev -y 
sudo apt-get install  libjpeg libpng libgif -y 

sudo apt-get install --reinstall libpng-dev
sudo apt-get install --reinstall libjpeg-dev







##手动编译结束###

sudo apt-get install openjdk-8-jdk

sudo apt-get install python3-numpy python3-dev python3-pip python3-wheel

sudo grep -Rl 'lib64' | sudo xargs sed -i 's/lib64/lib/g'

#所有命令都用 root执行
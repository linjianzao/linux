#!/usr/bin/env bash

rm -f /etc/apt/sources.list.d/raspi.list
cp conf/repo/sources.list /etc/apt/sources.list -rf
apt-get update 
apt-get install python3-pip python3-numpy swig python3-dev vim -y
apt-get install  libjpeg-dev libpng-dev libgif-dev -y 

pip3 install wheel
pip3 install protobuf
apt-get install gcc-4.8 g++-4.8
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 100
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 100

echo 'install require package finish'

cd tf

if [ ! -d "bazel" ]; then  
    unzip -d bazel bazel-0.4.5-dist.zip
fi

echo 'unzip bazel finish'

cp bazelreplace/scripts/bootstrap/compile.sh bazel/scripts/bootstrap/compile.sh -rf
cp bazelreplace/tools/cpp/cc_configure.bzl bazel/tools/cpp/cc_configure.bzl -rf

echo 'replace bazel file finish'

cd bazel

echo 'compile bazel start'

./compile.sh
cp output/bazel /usr/local/bin/bazel

echo 'bazel finish'

cd ..
if [ ! -d "/root/raspberry/tensorflow" ]; then  
    git clone --recurse-submodules https://github.com/tensorflow/tensorflow.git
    cd tensorflow
    git checkout v1.2.0
    grep -Rl 'lib64' | xargs sed -i 's/lib64/lib/g'
    ./configure
fi
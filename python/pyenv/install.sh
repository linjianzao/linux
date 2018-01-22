#!/usr/bin/env bash

#安装失败解决: https://github.com/pyenv/pyenv/wiki/Common-build-problems
#命令说明: https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-global

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev

sudo apt-get install libsslcommon2
sudo apt-get install libsslcommon2-dev



git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

exec "$SHELL"

sudo apt install linuxbrew-wrapper

#运行两次brew update
brew update
brew update

sudo apt-get upgrade libssl-dev

#3.5.3及以上版本安装:
CFLAGS="-I$(brew --prefix openssl)/include" LDFLAGS="-L$(brew --prefix openssl)/lib" pyenv install 3.5.4

#3.5.3以下版本
brew uninstall openssl && brew install openssl
CFLAGS="-I$(brew --prefix openssl)/include" LDFLAGS="-L$(brew --prefix openssl)/lib" pyenv install 3.4.7
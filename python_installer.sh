#!/usr/bin/bash
yum groupinstall "Development tools"
yum install -y zlib-devel
yum install -y bzip2-devel
yum install -y openssl-devel
yum install -y ncurses-devel 
yum install -y sqlite-devel 
    cd /opt
       wget --no-check-certificate https://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz
       tar xf Python-2.7.6.tar.xz
cd Python-2.7.6
./configure --prefix=/usr/local
 make && sudo make altinstall
echo "alias python=/usr/local/bin/python2.7" >> ~/.bashrc
      source ~/.bashrc


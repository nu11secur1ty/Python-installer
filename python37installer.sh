#!/usr/bin/bash
zypper install -y zlib-devel
zypper install -y bzip2-devel
zypper install -y openssl-devel
zypper install -y ncurses-devel 
zypper install -y sqlite-devel 
    cd /opt
       wget --no-check-certificate https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz
       tar xf Python-3.7.2.tgz
cd Python-3.7.2
./configure --prefix=/usr/local
make && make install
exit 0;

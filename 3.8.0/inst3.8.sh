#!/usr/bin/bash
# Author Ventsislav Varbanovski @nu11secur1ty
# @2019

apt install -y gcc
apt install -y make
apt install -y zlib-devel
#apt in -y bzip2-devel
apt install -y bzip2
apt install -y openssl-devel
apt install -y ncurses-devel 
apt install -y sqlite-devel 
apt install -y zlib-devel bzip2 libbz2-devel libffi-devel libopenssl-devel readline-devel sqlite3 sqlite3-devel xz xz-devel 

    cd /opt
       wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
       tar -xvf Python-3.8.0.tgz
cd Python-3.8.0
./configure --prefix=/usr/local
    make  
    make install
        sleep 3
    python3.8 -m pip install --upgrade setuptools
    python3.8 -m pip install --upgrade pip
        sleep 1
        echo -e "Congratulations. Now you are using python 3.8 on KaliLinux 2019.4.\n\nIf somehow you see an error please report it on our official GitHub page.\n\nhttps://github.com/nu11secur1ty/Python-installer/issues \n\n <--||===========>"

exit 0;

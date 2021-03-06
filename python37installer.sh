#!/usr/bin/bash
# Author Ventsislav Varbanovski @nu11secur1ty
# Support developer Atanas Stoev
# @2019

zypper install -y gcc
zypper install -y make
zypper install -y zlib-devel
#zypper in -y bzip2-devel
zypper install -y bzip2
zypper install -y openssl-devel
zypper install -y ncurses-devel 
zypper install -y sqlite-devel 
zypper install -y zlib-devel bzip2 libbz2-devel libffi-devel libopenssl-devel readline-devel sqlite3 sqlite3-devel xz xz-devel 

    cd /opt
       wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz
       tar -xvf Python-3.7.2.tgz
cd Python-3.7.2
./configure --prefix=/usr/local
    make  
    make install
        sleep 3
    python3.7 -m pip install --upgrade setuptools
    python3.7 -m pip install --upgrade pip
        sleep 1
        echo -e "Congratulations. Now you are using python 3.7 on OpenSuse 42.3 and 15.0.\n\nIf somehow you see an error please report it on our official GitHub page.\n\nhttps://github.com/nu11secur1ty/Python-installer/issues \n\n <--||===========>"

exit 0;


#!/usr/bin/bash
# Author Ventsislav Varbanovski @nu11secur1ty
# Support developer Atanas Stoev(2019)
# @2020

# GCC for normal Leap42.3
#zypper install -y gcc

# GCC manual 
zypper addrepo https://download.opensuse.org/repositories/openSUSE:Leap:15.2/standard/openSUSE:Leap:15.2.repo
zypper refresh
zypper install -y gcc7
zypper install -y gcc-7

# Need to install
zypper install -y make
zypper install -y zlib-devel
#zypper in -y bzip2-devel
zypper install -y bzip2
zypper install -y openssl-devel
zypper install -y ncurses-devel 
zypper install -y sqlite-devel 
zypper install -y zlib-devel bzip2 libbz2-devel libffi-devel libopenssl-devel readline-devel sqlite3 sqlite3-devel xz xz-devel 

    cd /opt
       wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
       tar -xvf Python-3.9.0.tgz
cd Python-3.9.0
./configure --prefix=/usr/local
    make  
    make install
        sleep 3
    python3.9 -m pip install --upgrade setuptools
    python3.9 -m pip install --upgrade pip
        sleep 1
        echo -e "Congratulations. Now you are using python 3.9 on OpenSuse 42.3 and 15.0.\n\nIf somehow you see an error please report it on our official GitHub page.\n\nhttps://github.com/nu11secur1ty/Python-installer/issues \n\n <--||===========>"

exit 0;

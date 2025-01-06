#!/usr/bin/bash
# @n11secur1ty
# All versions - manual installer  
# Packages
sudo apt-get update
sudo apt-get install \
    curl \
    gcc \
    libbz2-dev \
    libev-dev \
    libffi-dev \
    libgdbm-dev \
    liblzma-dev \
    libncurses-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    make \
    tk-dev \
    wget \
    zlib1g-dev

# Env
echo "Give the version! If you don't know the correct number of the version press Ctrl + C and never come back here!"
read VERSION
echo "Give the major"
read MAJOR
export PYTHON_VERSION=$VERSION
export PYTHON_MAJOR=$MAJOR

# Get
curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
tar -xvzf Python-${PYTHON_VERSION}.tgz
cd Python-${PYTHON_VERSION}

# Build and Install
./configure \
    --prefix=/opt/python/${PYTHON_VERSION} \
    --enable-shared \
    --enable-optimizations \
    --enable-ipv6 \
    LDFLAGS=-Wl,-rpath=/opt/python/${PYTHON_VERSION}/lib,--disable-new-dtags

make
sudo make install

# Setup Path env
PATH=/opt/python/<PYTHON-VERSION>/bin/:$PATH

# pip
curl -O https://bootstrap.pypa.io/get-pip.py
sudo /opt/python/${PYTHON_VERSION}/bin/python${PYTHON_MAJOR} get-pip.py

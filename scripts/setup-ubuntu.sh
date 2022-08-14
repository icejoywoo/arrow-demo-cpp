#!/bin/bash

# install latest cmake, to support preset

# https://askubuntu.com/questions/355565/how-do-i-install-the-latest-version-of-cmake-from-the-command-line
# Remove old version of cmake
sudo apt purge --auto-remove cmake

# Kitware now has an APT repository that currently supports Ubuntu 16.04, 18.04 and 20.04
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ focal main'     
sudo apt update

# install deps on ubuntu
sudo apt install -y \
  automake \
  g++ \
  cmake \
  ccache \
  ninja-build \
  checkinstall \
  pkg-config \
  git \
  libssl-dev \
  libevent-dev \
  libboost-all-dev \
  libdouble-conversion-dev \
  libgoogle-glog-dev \
  libbz2-dev \
  libgflags-dev \
  libgtest-dev \
  libgmock-dev \
  libevent-dev \
  libprotobuf-dev \
  libprotoc-dev \
  liblz4-dev \
  libzstd-dev \
  libre2-dev \
  libsnappy-dev \
  liblzo2-dev \
  protobuf-compiler \
  libthrift-dev \
  thrift-compiler \
  zstd
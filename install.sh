#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

pip install --upgrade neovim
pip2 install --upgrade neovim
pip3 install --upgrade neovim

brew install \
    automake \
    cmake \
    gettext \
    libtool \
    ninja \
    pkg-config
apt-get install -y \
    autoconf \
    automake \
    cmake \
    g++ \
    libtool \
    libtool-bin \
    ninja-build \
    pkg-config \
    unzip

sudo make clean \
    && sudo make CMAKE_BUILD_TYPE=RelWithDebInfo \
    && sudo make install \
    && ~/loadrc/gitrc/g.sh

rm ~/.viminfo

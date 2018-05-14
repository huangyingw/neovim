#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

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

make CMAKE_BUILD_TYPE=RelWithDebInfo \
    && make install \
    && ~/loadrc/gitrc/gci.sh

pip install --upgrade neovim
pip2 install --upgrade neovim
pip3 install --upgrade neovim
rm ~/.viminfo

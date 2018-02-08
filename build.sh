#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

brew install ninja libtool automake cmake pkg-config gettext

make \
    && make install \
    && ~/loadrc/gitrc/gci.sh

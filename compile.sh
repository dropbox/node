#!/bin/bash -e

./configure --prefix /usr
make -j16
make install DESTDIR=`pwd`/pkg-out

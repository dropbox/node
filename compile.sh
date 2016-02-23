#!/bin/bash -e

./configure --prefix `pwd`/pkg-out
make -j16
make install

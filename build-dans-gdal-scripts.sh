#!/bin/bash

N=4

./autogen.sh
./configure --prefix=/Users/andy/local/ 2>&1 | tee configure.log

make -j $N 2>&1 | tee compile.log
make install 2>&1 | tee install.log

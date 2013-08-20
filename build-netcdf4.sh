#!/bin/bash

prefix=/opt/local
PREFIX=/Users/andy/local
N=8

CC=$PREFIX/bin/h5pcc ./configure \
    --prefix=$PREFIX \
    --enable-netcdf-4  2>&1 | tee configure.log

make -j $N  2>&1 | tee compile.log
make install  2>&1 | tee configure.log
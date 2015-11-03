#!/bin/bash

prefix=/opt/local
PREFIX=/Users/andy/local
N=4

wget -nc ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4.3.3.1.tar.gz
tar -zxvf netcdf-4.3.3.1.tar.gz

cd netcdf-4.3.3.1

CC=$PREFIX/bin/h5pcc ./configure \
    --prefix=$PREFIX \
    --enable-netcdf-4  2>&1 | tee configure.log

make -j $N  2>&1 | tee compile.log
make install  2>&1 | tee configure.log

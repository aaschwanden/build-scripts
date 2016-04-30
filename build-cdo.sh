#!/bin/bash

prefix=/opt/local
mpiprefix=/Users/andy/local-mpi
PREFIX=/Users/andy/local
N=4
ver=1.7.1
b
wget -nc https://code.zmaw.de/attachments/download/12070/cdo-${ver}.tar.gz
tar -zxvf cdo-${ver}.tar.gz
cd cdo-${ver}

CC=${mpiprefix}/bin/mpicc CXX=${mpiprefix}/bin/mpicxx CFLAGS='-fopenmp' CPPFLAGS='-I/usr/include/malloc -I/opt/local/include/udunits2' ./configure --prefix=$PREFIX \
    --with-netcdf=${PREFIX} \
    --with-hdf5=${PREFIX} \
    --with-proj=${prefix} \
    --with-udunits2=${prefix} \
    --with-zlib=${prefix} 2>&1 | tee configure.log

make -j $N 2>&1 | tee compile.log
make install 2>&1 | tee install.log

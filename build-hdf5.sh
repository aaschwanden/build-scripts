#!/bin/bash

prefix=/opt/local
mpiprefix=/Users/andy/local-mpi
PREFIX=/Users/andy/local
N=4

wget -nc http://www.hdfgroup.org/ftp/HDF5/current/src/hdf5-1.8.15-patch1.tar
tar -xvf hdf5-1.8.15-patch1.tar

cd hdf5-1.8.15-patch1

CC=${mpiprefix}/bin/mpicc CXX=${mpiprefix}/bin/mpicxx ./configure \
    --prefix=$PREFIX \
    --enable-threadsafe --with-pthread --enable-production \
    --enable-shared  --enable-static --enable-cxx \
    --enable-parallel --enable-unsupported  2>&1 | tee configure.log

make -j $N  2>&1 | tee compile.log
make install  2>&1 | tee install.log

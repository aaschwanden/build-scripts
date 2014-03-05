#!/bin/bash

prefix=/opt/local
# We put it in a place not in the search path to avoid a mess
PREFIX=/Users/andy/local-mpi
N=4

CC=${prefix}/bin/gcc-mp-4.8 CXX=${prefix}/bin/g++-mp-4.8 F77=${prefix}/bin/gfortran-mp-4.8 FC=${prefix}/bin/gfortran-mp-4.8 ./configure --prefix=$PREFIX \
    2>&1 | tee configure.log

make -j $N 2>&1 | tee compile.log
make install 2>&1 | tee install.log

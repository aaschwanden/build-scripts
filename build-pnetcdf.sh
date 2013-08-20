#!/bin/bash

prefix=/opt/local
PREFIX=/Users/andy/local
N=8

MPICC=${prefix}/bin/openmpicc MPICXX=${prefix}/bin/openmpicxx ./configure \
    --prefix=$PREFIX --disable-fortran 2>&1 | tee configure.log

make -j $N  2>&1 | tee compile.log
make install  2>&1 | tee configure.log
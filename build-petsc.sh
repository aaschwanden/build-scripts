#!/bin/bash

PETSC_ARCH=macosx

./configure --with-shared-libraries --with-dynamic-loading --with-fortran=0 --with-blas-lapack-dir=/usr/ --with-cc=/opt/local/bin/openmpicc --with-cxx=/opt/local/bin/openmpic++ --with-mpiexec=/opt/local/bin/openmpiexec --with-mpi-dir=/opt/local --with-clanguage=c++ PETSC_ARCH=$PETSC_ARCH 2>&1 | tee configure.log

PETSC_DIR=/Users/andy/petsc PETSC_ARCH=$PETSC_ARCH ./config/builder.py 2>&1 | tee compile.log
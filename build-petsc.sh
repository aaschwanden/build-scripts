#!/bin/bash

PETSC_ARCH=macosx

## Basic Installation
# ./configure --with-shared-libraries --with-dynamic-loading --with-fortran=0 --with-blas-lapack-dir=/usr/ --with-cc=/opt/local/bin/openmpicc --with-cxx=/opt/local/bin/openmpic++ --with-mpiexec=/opt/local/bin/openmpiexec --with-mpi-dir=/opt/local --with-clanguage=c++ PETSC_ARCH=$PETSC_ARCH 2>&1 | tee configure.log

## With mumps n' stuff
./configure --download-parmetis --download-metis --download-scalapack --download-mumps --with-shared-libraries --with-dynamic-loading --with-fortran=1 --with-blas-lapack-dir=/usr/ --download-openmpi --with-clanguage=c++ PETSC_ARCH=$PETSC_ARCH 2>&1 | tee configure.log

PETSC_DIR=/Users/andy/petsc PETSC_ARCH=$PETSC_ARCH ./config/builder.py 2>&1 | tee compile.log
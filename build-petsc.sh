#!/bin/bash

## Basic Installation

PETSC_ARCH=macosx
./configure --with-debugging=0 --with-shared-libraries --with-dynamic-loading --with-fortran=0 --with-blas-lapack-dir=/usr/ --with-cc=/opt/local/bin/openmpicc --with-cxx=/opt/local/bin/openmpic++ --with-mpiexec=/opt/local/bin/openmpiexec --with-mpi-dir=/opt/local --with-clanguage=c++ PETSC_ARCH=$PETSC_ARCH

PETSC_DIR=/Users/andy/petsc PETSC_ARCH=$PETSC_ARCH ./config/builder.py 2>&1 | tee compile.log

exit

## With mumps n' stuff
PETSC_ARCH=macosx-mumps
./configure --download-parmetis --download-metis --download-scalapack --download-mumps --with-shared-libraries --with-dynamic-loading --with-fortran=1 --with-cc=/opt/local/bin/openmpicc --with-cxx=/opt/local/bin/openmpic++ --with-mpiexec=/opt/local/bin/openmpiexec --with-mpi-dir=/opt/local/ --with-clanguage=c++ PETSC_ARCH=$PETSC_ARCH 2>&1 | tee configure-2.log

PETSC_DIR=/Users/andy/petsc PETSC_ARCH=$PETSC_ARCH ./config/builder.py 2>&1 | tee compile-2.log

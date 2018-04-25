#!/bin/bash

sudo port -vN install \
     mpich-devel-clang50 \
     hdf5 +mpich_devel +threadsafe +experimental +clang50\
     netcdf +mpich_devel +clang50 \
     cdo +cdi +grib_api +mpich_devel +clang50 \
     nco  +clang50\
     gdal +mpich_devel +hdf5 +netcdf +geos +spatialite +postgresql10 +clang50 \
     ncview \
     git +bash_completion +svn \
     wget \
     emacs-app \
     doxygen \
     aspell aspell-dict-en aspell-dict-de aspell-dict-de-alt \
     grass7 \
     fondu \
     qwt61 -qt5 +qt4 \
     py36-jupyter +qtconsole \
     py36-pip \
     py36-autopep8 \
     py36-pyproj \
     py36-scipy \
     py36-shapely \
     py36-cython \
     py36-netcdf4 +mpich_devel +clang50 \
     py36-backports-functools_lru_cache \
     py36-matplotlib \
     py36-matplotlib-basemap \
     py36-unidecode \
     py36-statsmodels \
     py36-pip \
     py36-pandas \
     py36-fiona \
     py36-gdal \
     py36-pyproj \
     qgis3 +grass
     

sudo port select --set autopep8 autopep8-36    
sudo port select --set ipython py36-ipython
sudo port select --set ipython3 py36-ipython
sudo port select --set pep8 pep8-36
sudo port select --set pip pip36
sudo port select --set python3 python36
sudo port select --set python python36
sudo port select --set cython cython36
sudo port select --set gcc mp-gcc7
sudo port select --set mpi mpich-devel-clang50-fortran



# Dolfin

sudo port -vN install \
     boost +mpich_devel +clang50 \
     ld64 +ld64_xcode \
     metis +clang50 \
     parmetis -mpich +mpich_devel +clang50 \
     suitesparse +clang50 \
     superlu_dist -mpich +mpich_devel +clang50 \
     petsc -mpich +mpich_devel +mumps +suitesparse +clang50 \
     dolfin -mpich +mpich_devel +hdf5 +parmetis +petsc +suitesparse +clang50



exit


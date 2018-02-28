#!/bin/bash

sudo port -v install \
     mpich-devel-clang50 \
     hdf5 +mpich_devel +threadsafe +experimental +clang50\
     netcdf +mpich_devel +clang50 \
     cdo +cdi +grib_api +mpich_devel +clang50 \
     nco  +clang50\
     gdal +mpich_devel +hdf5 +netcdf +geos +spatialite +postgresql96 +clang50 \
     ncview \
     git +bash_completion +svn \
     wget \
     emacs-app \
     doxygen \
     aspell aspell-dict-en aspell-dict-de aspell-dict-de-alt \
     grass7 \
     qgis  +grass -qt5 +qt4 \
     py27-numpy \
     py27-jupyter +qtconsole \
     py27-pip \
     py27-autopep8 \
     py27-pyproj \
     py27-scipy \
     py27-shapely \
     py27-cython \
     py27-netcdf4 +mpich_devel +clang50 \
     py27-backports-functools_lru_cache \
     py27-matplotlib-basemap \
     py27-unidecode \
     py27-statsmodels \
     py27-pip \
     py27-pandas \
     py27-fiona \
     py27-sphinx \
     fondu



# Dolfin

sudo port -v install \
     boost +mpich_devel +clang50 \
     ld64 +ld64_xcode \
     metis +clang50 \
     parmetis -mpich +mpich_devel +clang50 \
     suitesparse +clang50 \
     superlu_dist -mpich +mpich_devel +clang50 \
     scalapack -mpich +mpich_devel +clang50 \
     petsc -mpich +mpich_devel +mumps +suitesparse +clang50 \
     dolfin +mpich_devel +hdf5 +parmetis +petsc +suitesparse



    R for QGIS, packages are needed and installed as sudo

    $ sudo R
    install.packages('automap')
    rgdal, raster, rgl, spatstat, maptools, pls, rgeos

exit


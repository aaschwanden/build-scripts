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
     py27-gdal \
     fondu \
     qwt61 -qt5 +qt4 \
     qgis +grass -qt5 +qt4
     petsc +superlu_dist +mumps +parmetis +suitesparse \
     py36-jupyter +qtconsole \
     py36-pip \
     py36-autopep8 \
     py36-pyproj \
     py36-scipy \
     py36-shapely \
     py36-cython \
     py36-netcdf4 +mpich_devel +clang50 \
     py36-backports-functools_lru_cache \
     py36-matplotlib-basemap \
     py36-unidecode \
     py36-statsmodels \
     py36-pip \
     py36-pandas \
     py36-fiona \
     py36-gdal
     
 sudo port select --set autopep8 autopep8-27
 sudo port install -s py27-cairo
 sudo port select --set cython cython27
 sudo port select --set ipython py27-ipython
 sudo port select --set ipython2 py27-ipython
 sudo port select --set pep8 pep8-27    
 sudo port select --set pip pip27
sudo port select --set mpi mpich-devel-clang50-fortran

sudo port select --set autopep8 autopep8-36    
sudo port select --set ipython py36-ipython
sudo port select --set ipython3 py36-ipython
sudo port select --set pep8 pep8-36

sudo port -v install ld64 +ld64_xcode mumps -mpich +mpich_devel +clang50 superlu_dist -mpich +mpich_devel +clang50
sudo port -v install petsc -mpich +mpich_devel +superlu_dist +mumps +parmetis +suitesparse +clang50
sudo port -v install dolfin +petsc -mpich +mpich_devel +hdf5 +clang50 +parmetis


sudo port -v install \
    mpich-default \
    hdf5 +mpich +threadsafe \
    netcdf +mpich \
    proj \
    py27-numpy \
    git +bash_completion +svn \
    ncview \
    gsl \
    fftw-3 \
    cmake \
    wget \
    emacs-app \
    aspell aspell-dict-en aspell-dict-de aspell-dict-de-alt \
    py27-unidecode \
    py27-statsmodels \
    py27-pip \
    py27-autopep8 \
    py27-jupyter +qtconsole \
    py27-pyproj \
    py27-scipy \
    py27-shapely \
    py27-cython \
    py27-netcdf4 \
    py27-matplotlib-basemap \
    gdal +expat+geos+grib+mpich+netcdf+spatialite+sqlite3 \
    py27-fiona \
    py27-rtree \
    py27-unidecode \
    py27-tables +mpich \
    py27-statsmodels \
    py27-pandas \
    nco \
    screen \
    swig \
    swig-python \
    qgis +grass \
    xorg-libXt +flat_namepsace \
    R \
    R-app \
    fondu \
    qca-ossl

=======
     py27-sphinx \
     fondu
>>>>>>> 4bf04b68579d828c4620200229f52ef4df5463e4



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


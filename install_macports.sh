#!/bin/bash

sudo port -vN install \
     mpich-devel-clang70 \
     hdf5 +mpich_devel +threadsafe +experimental +clang70\
     netcdf +mpich_devel +clang70 \
     cdo +cdi +grib_api +mpich_devel +clang70 \
     nco  +clang70 \
     gdal +mpich_devel +hdf5 +netcdf +geos +spatialite +postgresql10 +clang70 \
     ncview \
     git +bash_completion +svn \
     wget \
     emacs-app \
     doxygen \
     aspell aspell-dict-en aspell-dict-de aspell-dict-de-alt \
     grass7 \
     fondu \
     ffmpeg +nonfree \
     py36-numpy +gcc8 +openblas \
     py36-pyqt5 +webengine +webkit \
     py36-nose \
     py36-future \
     py36-sphinx \
     py36-sphinx_rtd_theme \
     py36-jupyter +qtconsole \
     py36-pip \
     py36-autopep8 \
     py36-pyproj \
     py36-scipy \
     py36-shapely \
     py36-cython \
     py36-netcdf4 +mpich_devel +clang70 \
     py36-matplotlib \
     py36-matplotlib-basemap \
     py36-unidecode \
     py36-statsmodels \
     py36-pip \
     py36-pandas \
     py36-fiona \
     py36-gdal \
     py36-pyproj \
<<<<<<< HEAD
     py36-pillow \
=======
     py36-unidecode \
>>>>>>> 432be918d1598d4bb3d66a4fefbe3b1d61a88ec9
     qgis3 +grass
     

sudo port select --set autopep8 autopep8-36    
sudo port select --set ipython py36-ipython
sudo port select --set ipython3 py36-ipython
sudo port select --set pep8 pep8-36
sudo port select --set pip pip36
sudo port select --set python3 python36
sudo port select --set python python36
sudo port select --set cython cython36
sudo port select --set clang mp-clang-7.0
sudo port select --set gcc mp-gcc8
sudo port select --set mpi mpich-devel-clang70-fortran
sudo port select --set sphinx py36-sphinx
sudo port select --set nosetests nosetests36



# Dolfin

sudo port -vN install \
     boost +mpich_devel +clang70 \
     ld64 +ld64_xcode \
     metis +clang70 \
     parmetis -mpich +mpich_devel +clang70 \
     suitesparse +clang70 \
     superlu_dist -mpich +mpich_devel +clang70 \
     petsc -mpich +mpich_devel +mumps +suitesparse +clang70 \
     dolfin -mpich +mpich_devel +hdf5 +parmetis +petsc +suitesparse +clang70


pip install cftime --user
pip install nc-time-axis --user

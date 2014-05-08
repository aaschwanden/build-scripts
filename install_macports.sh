#!/bin/bash

sudo port -v install \
    gcc47 gcc48 \
    mpich-default \
    hdf5-18 +mpich +threadsafe \
    py27-numpy wget \
    git-core +bash_completion +svn \
    netcdf +mpich \
    ncview gsl fftw-3 proj47 cmake \
    GitX \
    emacs-mac-app \
    py27-ipython +notebook +pyside +parallel \
    py27-pyproj \
    py27-scipy py27-shapely \
    py27-cython py27-pyflakes \
    nco \
    boost +no_single+no_static+mpich+python27 \
    swig swig-python \
    py27-netcdf4 \
    xinit doxygen graphviz \
    py27-matplotlib \
    py27-matplotlib-basemap \
    bgdal +expat+geos+netcdf+python27 \
    py27-statsmodels py27-acor \
    py27-pandas \
    py27-pil \
    py27-joblib \
    mercurial \
    udunits2 \
    vtk5 +python27 \
    ffmpeg +nonfree \
    scons \
    f2c aspell  aspell-dict-en \
    grass -python26 +python27 \
    py27-pyqt4 qgis +grass \
    opencv +python27 +qt4 \
    py27-scikit-image \
    Py27-virtualenv



exit

# DOLFIN:

# for mumps, you need to edit the port file: remove the -fPIC flag as clang now hard errors on this

sudo port -v install cppunit metis +openmp +gfortran superlu_dist +mpich sundials mumps +mpich +gfortran  petsc +parmetis +gfortran +mumps +suitsparse  +sundials boost +mpich eigen3 dolfin


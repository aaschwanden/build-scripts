#/bin/bash
export ESMF_DIR=$HOME/esmf
export ESMF_F90=gfortran-mp-5
export ESMF_NETCDF=standard
export ESMF_NETCDF_INCLUDE=/opt/local/include
export ESMF_NETCDF_LIBPATH=/opt/local/lib
make
make all_tests

cd src/addon/ESMPy/
python setup.py build –ESMFMKFILE=$ESMF_DIR/lib/libO/Darwin.gfortran.64.mpiuni.default/esmf.mk
python setup.py install –prefix=~/python

# export ESMF_NETCDF=pacman
# export ESMF_NETCDF_INCLUDE=/usr/local/pkg/netcdf/netcdf-4.1.3.gnu-4.5.1/include
# export ESMF_NETCDF_LIBPATH=/usr/local/pkg/netcdf/netcdf-4.1.3.gnu-4.5.1/lib/libnetcdf.so
# export ESMF_NETCDF_LIBS="-lnetcdf"
# export ESMF_PNETCDF=pacman
# export ESMF_PNETCDF_INCLUDE=/usr/local/pkg/pnetcdf/pnetcdf-1.3.1.gnu-4.7.3/include
# export ESMF_PNETCDF_LIBPATH=/usr/local/pkg/pnetcdf/pnetcdf-1.3.1.gnu-4.7.3/lib/libpnetcdf.a
# export ESMF_PNETCDF_LIBS="-lpnetcdf"
# ESMFMKFILE=/center/w/aschwand/esmf/lib/libO/Linux.gfortran.64.mpiuni.default/esmf.mk

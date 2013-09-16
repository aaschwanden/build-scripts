build-scripts
=============

Build scripts to compile stuff like hdf5, netcdf4, etc, with openmpi/gcc instead of macports openmpi/clang which does not support OpenMP

ln -s /opt/local/bin/openmpic++ ~/local/bin/mpic++
ln -s /opt/local/bin/openmpicxx ~/local/bin/mpicxx
ln -s /opt/local/bin/openmpicc ~/local/bin/mpicc
ln -s /opt/local/bin/openmpif77 ~/local/bin/mpif77
ln -s /opt/local/bin/openmpif90 ~/local/bin/mpif90
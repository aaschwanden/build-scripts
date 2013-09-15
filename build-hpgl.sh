#!/bin/bash

N=8

wget -nc http://www.netlib.org/clapack/clapack-3.1.1.1.tgz
tar -zxvf clapack-3.1.1.1.tgz
cd CLAPACK-3.1.1.1
cp make.inc.example make.inc
make -j $N
cd ../src
scons -j $N
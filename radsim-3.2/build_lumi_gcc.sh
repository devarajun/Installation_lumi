#!/bins/bash
# Build notes for eumetsat radsim 3.2 in lumi.csc.fi
# 2023-11-23, devaraju.narayanappa@csc.fi
#Currently Loaded Modules:
#  1) craype-x86-rome      4) perftools-base/23.09.0                      7) lumi-tools/23.11 (S)  10) cray-dsmml/0.2.2       13) cray-hdf5/1.12.2.7   16) cray-mpich/8.1.27
#  2) libfabric/1.15.2.0   5) xpmem/2.5.2-2.4_3.50__gd0f7936.shasta       8) init-lumi/0.2    (S)  11) cray-libsci/23.09.1.1  14) cray-netcdf/4.9.0.7
#  3) craype-network-ofi   6) ModuleLabel/label                     (S)   9) craype/2.7.23         12) PrgEnv-gnu/8.4.0       15) gcc/12.2.0
#
#  Where:
#   S:  Module is Sticky, requires --force to unload or purge

cd $TMPDIR
tar xvf ~/software-downloads/radsim-3.2.tar.gz
cd radsim-3.2
sed -i'~' 's/hdf5hl_fortran/hdf5_hl_fortran/' build/cfg/common.cfg   #edit the file by replacing hdf5hl_fortran
./radsim_install

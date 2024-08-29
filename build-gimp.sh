#! /bin/bash

# using hash tab over cd can disable one co-app from compiling 

export PREFIX=~/gimp_directory/here
export LD_LIBRARY_PATH=${PREFIX}/lib64
export LD_LIBRARY_PATH=${PREFIX}/lib64:${PREFIX}/lib
export PATH=$PREFIX/bin:$PATH
export XDG_DATA_DIRS="$PREFIX/share:$XDG_DATA_DIRS"
export GI_TYPELIB_PATH="${PREFIX}/lib64/girepository-1.0:${PREFIX}/lib/girepository-1.0:${PREFIX}/lib/${arch}/girepository-1.0:$GI_TYPELIB_PATH"

set -e

top=`pwd`

 cd babl
SRC_DIR=$(pwd); BUILD_DIR=${SRC_DIR}/obj-$(arch); mkdir -p $BUILD_DIR && cd $BUILD_DIR && meson -Dprefix=$PREFIX  $SRC_DIR && ninja && ninja install

 cd $top/gegl
SRC_DIR=$(pwd); BUILD_DIR=${SRC_DIR}/obj-$(arch); mkdir -p $BUILD_DIR && cd $BUILD_DIR && meson -Dprefix=$PREFIX -Dworkshop=true -Dcairo=enabled -Dumfpack=enabled -Dopenexr=enabled  $SRC_DIR && ninja && ninja install

 cd $top/gimp
SRC_DIR=$(pwd); BUILD_DIR=${SRC_DIR}/obj-$(arch); mkdir -p $BUILD_DIR && cd $BUILD_DIR && meson -Dprefix=$PREFIX -Dopenexr=enabled $SRC_DIR && ninja && ninja install 

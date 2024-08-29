#! /bin/sh



GTK3_MODULES=""
export GTK3_MODULES 

# export MALLOC_CHECK_=1 
PREFIX=~/muhdirhere/
PATH=$PREFIX/bin:$PATH
export PATH

XDG_DATA_DIRS="$PREFIX/share:$XDG_DATA_DIRS"
export XDG_DATA_DIRS

LD_LIBRARY_PATH=$PREFIX/lib64:$PREFIX/lib
export LD_LIBRARY_PATH

# GIMP_ICONS_LIKE_A_BOSS=1 draws icons in menus!

GI_TYPELIB_PATH=~/muhdirhere/lib64/girepository-1.0:/usr/lib64/girepository-1.0

export GEGL_THREADS=1 

export GI_TYPELIB_PATH


#export GEGL_DEBUG=all

exec $PREFIX/bin/gimp-2.99 "$@"



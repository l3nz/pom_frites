#! /bin/bash

function assertFile {
if [ ! -f $1 ]; then
    echo "File not found - $1"
    exit 1
fi
}

SRC=$2
VER=$1

SRV=$SRC/loway-tpf-${VER}p.jar
assertFile $SRV
./pomfrite  -p tpfgwt-server -v $VER -j $SRV -r /var/www/html/maven  


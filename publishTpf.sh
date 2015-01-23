#! /bin/bash

function assertFile {
if [ ! -f $1 ]; then
    echo "File not found - $1"
    exit 1
fi
}

SRC=$2
VER=$1

SRV=$SRC/loway-tpf-${VER}.jar
assertFile $SRV
./pomfrite  -p loway-tpf -v $VER -j $SRV -r /var/www/html/maven  


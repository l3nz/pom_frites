#! /bin/bash

function assertFile {
if [ ! -f $1 ]; then
    echo "File not found - $1"
    exit 1
fi
}


SRC=$2
VER=$1

CLI=$SRC/TpfGwt-$VER-gwtSources.jar
SRV=$SRC/TpfGwt-$VER-server.jar

assertFile $CLI
assertFile $SRV

./pomfrite  -p tpfgwt-client -v $VER -j $CLI -r /var/www/html/maven
./pomfrite  -p tpfgwt-server -v $VER -j $SRV -r /var/www/html/maven  


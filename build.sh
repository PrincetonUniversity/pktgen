#!/bin/bash

# TODO: this should probably be a makefile
# TODO: install target
(
cd deps/dpdk
if [[ ! -e Makefile ]]
then
	echo "ERROR: dpdk submodule not initialized"
	echo "Please run git submodule update --init"
	exit 1
fi
make -j 8 install T=x86_64-native-linuxapp-gcc
cd ../../
cd setup-scripts
source ./helpers/setup-vars-pktgen-dpdk.sh
cd ../
make
)

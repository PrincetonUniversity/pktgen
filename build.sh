#!/bin/bash

# TODO: this should probably be a makefile
# TODO: install target
(
# Compile dpdk
cd ./dpdk
make -j 8 install T=x86_64-native-linuxapp-gcc

# Compile pktgen
export RTE_SDK=$PWD/dpdk
export RTE_TARGET=x86_64-native-linuxapp-gcc

cd ../
make
)

#!/bin/bash

# TODO: this should probably be a makefile
# TODO: install target
(
export RTE_SDK=./dpdk
export RTE_TARGET=x86_64-native-linuxapp-gcc

# Compile dpdk
cd $RTE_SDK
make -j 8 install T=$RTE_TARGET

# Compile pktgen
make -j 8
)

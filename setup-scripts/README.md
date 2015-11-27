# Installation

1. Install the dependencies (see below)
2. git submodule update --init
2. ./build.sh
3. ./scripts/setup-moongen.sh
4. Run MoonGen from the build directory

Use `deps/dpdk/tools/dpdk_nic_bind.py` to unbind NICs from the DPDK driver.


## Dependencies
* gcc
* make
* cmake
* kernel headers (for the DPDK igb-uio driver)

# Examples
MoonGen comes with examples in the examples folder which can be used as a basis for custom scripts.

    ./build/MoonGen ./examples/forward.lua 0 1

The two command line arguments are the transmission and reception ports. MoonGen prints all available ports on startup, so adjust this if necessary.

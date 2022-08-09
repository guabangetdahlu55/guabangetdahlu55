#!/bin/bash

set -e

# Customize this script to provide all the necessary steps to prepare your
# source files.
autoconf
./configure

# In case you need to compile everything,
bear make

# Or add external required libraries sources
git clone --depth 1 --branch v1.1.3 \
  https://github.com/madler/zlib.git ./lib/zlib

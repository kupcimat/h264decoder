#!/bin/bash

set -e -x

PYTHON_VERSION="3.8"
BOOST_PYTHON_LIBRARY="/usr/local/lib/libboost_python38.dylib"

# create build directory
mkdir -p build && cd build

# create build script
cmake -DPython_ADDITIONAL_VERSIONS=$PYTHON_VERSION \
      -DBoost_PYTHON_LIBRARY_RELEASE=$BOOST_PYTHON_LIBRARY \
      ..

# build library
make

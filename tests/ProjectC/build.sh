#!/bin/sh

BUILD_DIR="build"
SRC_DIR=`pwd`
BUILD_TYPE=Release
ENABLE_TESTS=ON

set +x

ORI_DIR=`pwd`

mkdir -p $BUILD_DIR && \
cd $BUILD_DIR

echo "Running in `pwd` :"
cmake -DProjectC_BUILD_TYPE=$BUILD_TYPE -DProjectC_ENABLE_TESTS=$ENABLE_TESTS $SRC_DIR

make

ctest

cd $ORI_DIR

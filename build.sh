#!/bin/bash

set -x
set -u
set -e

CURRENT_DIR=$(cd `dirname $0`; pwd)
BUILD_DIR=${CURRENT_DIR}/_build
if [ "$(uname)" == "Darwin" ]; then
    CMAKE_ARGS="-DOPENSSL_ROOT_DIR=$(brew --prefix openssl@1.1)"
else
    CMAKE_ARGS=""
fi

time (
	rm -rf ${BUILD_DIR} 
	mkdir ${BUILD_DIR}
	cd ${BUILD_DIR}
	cmake .. -G Ninja ${CMAKE_ARGS}
	cmake --build .
	ctest
)

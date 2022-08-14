#!/bin/bash

set -x
set -u
set -e

BUILD_DIR=_build
CMAKE_ARGS="-DOPENSSL_ROOT_DIR=$(brew --prefix openssl@1.1)"

time (
	rm -rf ${BUILD_DIR} 
	mkdir ${BUILD_DIR}
	cd ${BUILD_DIR}
	cmake .. -G Ninja ${CMAKE_ARGS}
	cmake --build .
	ctest
)

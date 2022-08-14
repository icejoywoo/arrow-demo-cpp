#!/bin/bash

PREFIX_URL=${PREFIX_URL:-http://localhost/local}
export ARROW_SUBSTRAIT_URL=${PREFIX_URL}/v0.6.0.tar.gz
export ARROW_GTEST_URL=${PREFIX_URL}/release-1.11.0.tar.gz
export ARROW_JEMALLOC_URL=${PREFIX_URL}/jemalloc-5.3.0.tar.bz2
export ARROW_MIMALLOC_URL=${PREFIX_URL}/v2.0.6.tar.gz
export ARROW_RAPIDJSON_URL=${PREFIX_URL}/232389d4f1012dddec4ef84861face2d2ba85709.tar.gz
export ARROW_XSIMD_URL=${PREFIX_URL}/8.1.0.tar.gz
export ARROW_UTF8PROC_URL=${PREFIX_URL}/v2.7.0.tar.gz
export ARROW_PROTOBUF_URL=${PREFIX_URL}/protobuf-all-21.3.tar.gz

#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

cmake -B build -S ${SRC_DIR} \
    -G "Ninja" \
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
    -D ENABLE_LIBRARY:BOOL=OFF \
    ${CMAKE_ARGS}

cmake --build build -j ${CPU_COUNT}
cmake --install build

#!/bin/bash

set -exo pipefail

if [[ "${target_platform}" == "linux-ppc64le" ]]; then
  CMAKE_ARGS="-DS2N_NO_PQ=ON ${CMAKE_ARGS}"
fi

mkdir build-shared
pushd build-shared
cmake ${CMAKE_ARGS} -GNinja \
  -DCMAKE_PREFIX_PATH=$PREFIX \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DENABLE_TESTING=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_SHARED_LIBS=ON \
  ..
ninja install

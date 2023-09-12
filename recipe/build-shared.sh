#!/bin/bash

set -exo pipefail

mkdir build-shared
pushd build-shared
cmake ${CMAKE_ARGS} -GNinja \
  -DUNSAFE_TREAT_WARNINGS_AS_ERRORS=OFF \
  -DCMAKE_PREFIX_PATH=$PREFIX \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DENABLE_TESTING=OFF \
  -DBUILD_TESTING=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_SHARED_LIBS=ON \
  ..
ninja install

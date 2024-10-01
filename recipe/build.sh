set -ex
mkdir -p build
cd build

cmake ${CMAKE_ARGS} \
    -G "Ninja" \
    -D ENABLE_LIBRARY:BOOL=OFF \
    -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
    -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
    ..

ninja install

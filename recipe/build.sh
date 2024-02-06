#!/bin/bash
mkdir build
cd build
export NumPy_INCLUDE_DIR=$(python -c "import numpy; print(numpy.get_include())")
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=${PREFIX} -DNumPy_INCLUDE_DIR=${NumPy_INCLUDE_DIR} -DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib -DCMAKE_CXX_FLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY" ..
make
make install 

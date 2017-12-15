#!/bin/bash
sed -i "s/^PROJECT_LOGO/#&/" doc/doxygen.cfg.in
./configure --prefix=/usr \
            --disable-static
# Explicitly disable parallel build
make -j1
make DESTDIR=${SHED_FAKEROOT} install

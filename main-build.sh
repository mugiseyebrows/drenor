#!/bin/bash
# This file is generated from main.pbat, all edits will be lost
gcc -v
perl -v
git clone git://git.openssl.org/openssl.git src
cd src
git checkout OpenSSL_1_0_1m
./config --prefix="`pwd`/../OpenSSL" --openssldir=ssl --shared
sed -i 's,-mno-cygwin,,' Makefile
sed -i 's,i486,i686,' Makefile
sed -i 's,0x333,0x400,' Makefile
make
make install
cd ..
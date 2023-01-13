#!/bin/bash
gcc -v
perl -v
git clone git://git.openssl.org/openssl.git src
cd src
git checkout $1
./config --prefix="`pwd`/../OpenSSL" --openssldir=ssl --shared
sed -i 's,-mno-cygwin,,' Makefile
sed -i 's,i486,i686,' Makefile
sed -i 's,0x333,0x400,' Makefile
make
cd ..
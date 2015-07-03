#!/bin/bash

# install zlib
tar -zxf $DOW/zlib-1.2.8.tar.gz -C $APP/
cd $APP/zlib-1.2.8/

./configure
make
sudo make install

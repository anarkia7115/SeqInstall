#!/bin/bash

# install ncurses
tar -zxf $DOW/ncurses-5.9.tar.gz -C $APP/snp
cd $APP/snp/ncurses-5.9/

./configure
make
sudo make install


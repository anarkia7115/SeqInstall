#!/bin/bash

# install boost
cd ~/Downloads/
tar -zxf $DOW/boost_1_58_0.tar.gz -C $APP/
cd $APP/boost_1_58_0/

./bootstrap.sh --with-libraries=filesystem
sudo ./b2 install

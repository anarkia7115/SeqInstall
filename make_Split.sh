#!/bin/bash

# make Split
mkdir $APP/Split
tar -zxf $DOW/Split.tar.gz -C $APP/Split
cd $APP/Split/cpp/

if [ -f CopyAndDistribute ];then rm CopyAndDistribute;fi
make

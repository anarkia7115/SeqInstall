#!/bin/bash

# install bwa
tar -zxf $DOW/software.tar.gz -C $APP
mv $APP/software/bwamemsrc/ $APP/align
cd $APP/align/bwamemsrc

if [ -f bwamem ];then rm bwamem;fi
make


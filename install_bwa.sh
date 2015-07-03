#!/bin/bash

# install bwa
tar -zxf $DOW/software.tar.gz -C $APP
mkdir $APP/align
mv $APP/software/bwamemsrc/ $APP/align
cd $APP/align/bwamemsrc

make


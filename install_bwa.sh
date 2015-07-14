#!/bin/bash

# install bwa
mv $APP/software/bwamemsrc/ $APP/align
cd $APP/align/bwamemsrc

if [ -f bwamem ];then rm bwamem;fi
make


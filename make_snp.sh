#!/bin/bash

#make snp
cd $APP/snp
mv $APP/software/SnpIndelVarScan2.cpp $APP/snp

g++ -std=c++11 ./SnpIndelVarScan2.cpp -o SnpIndelVarScan2

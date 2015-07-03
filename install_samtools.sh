#!/bin/bash

# install samtools
tar -jxf $APP/software/samtools-0.1.19.tar.bz2 -C $APP/snp
cd $APP/snp/samtools-0.1.19

make



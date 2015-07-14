#!/bin/bash

# install samtools
tar -jxf $APP/software/samtools-0.1.19.tar.bz2 -C /application/
cd /application/samtools-0.1.19/

make

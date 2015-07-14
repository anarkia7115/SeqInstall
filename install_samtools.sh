#!/bin/bash

# install samtools
tar -jxf $APP/software/samtools-0.1.19.tar.bz2 -C /application/
cd /application/samtools-0.1.19/

mv $APP/snp/bam_readfirstline.c /application/samtools-0.1.19/

make
gcc -c /application/samtools-0.1.19/bam_readfirstline.c -lz -lpthread
ar r /application/samtools-0.1.19/libbam.a bam_readfirstline.o
rm -f bam_readfirstline.o


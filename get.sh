#!/bin/bash


aws s3 cp s3://gcbibucket/align/hg19/ $APP/align/hg19/ --recursive
aws s3 cp s3://gcbibucket/snp/hsa_bwa_hg19_header.fa.fai $APP/snp/
aws s3 cp s3://gcbibucket/snp/bam_readfirstline.c $APP/snp/
#aws s3 cp s3://gcbibucket/jdk-7u79-linux-x64.tar.gz $DOW/
#aws s3 cp s3://gcbibucket/MySQL-server-5.6.25-1.el7.x86_64.rpm $DOW/
aws s3 cp s3://gcbibucket/Split.tar.gz $DOW/
aws s3 cp s3://gcbibucket/boost_1_58_0.tar.gz $DOW/
aws s3 cp s3://gcbibucket/ncurses-5.9.tar.gz $DOW/
aws s3 cp s3://gcbibucket/software.tar.gz $DOW/
aws s3 cp s3://gcbibucket/zlib-1.2.8.tar.gz $DOW/

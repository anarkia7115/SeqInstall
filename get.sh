#!/bin/bash

mkdir -p ~/Downloads
aws s3 cp s3://gcbibucket/align/hg19.fa ~/applications/align/
aws s3 cp s3://gcbibucket/jdk-7u79-linux-x64.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/MySQL-server-5.6.25-1.el7.x86_64.rpm ~/Downloads/
aws s3 cp s3://gcbibucket/Split.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/boost_1_58_0.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/ncurses-5.9.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/software.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/zlib-1.2.8.tar.gz ~/Downloads/

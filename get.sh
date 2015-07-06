#!/bin/bash

mkdir -p ~/Downloads
aws s3 cp s3://gcbibucket/Split.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/boost_1_58_0.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/ncurses-5.9.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/software.tar.gz ~/Downloads/
aws s3 cp s3://gcbibucket/zlib-1.2.8.tar.gz ~/Downloads/

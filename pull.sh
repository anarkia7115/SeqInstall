#!/bin/bash

MNT=/mnt

aws s3 cp s3://gcbibucket/install $MNT/install/ --recursive

sh $MNT/install/install.sh

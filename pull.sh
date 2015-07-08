#!/bin/bash

aws s3 cp s3://gcbibucket/install ~/install/ --recursive

sh ~/install/install.sh

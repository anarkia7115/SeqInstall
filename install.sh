#!/bin/bash
set -e

#4. install zlib
#4. install boost
#5. export LD_LIBRARY_PATH
#   make Split
#   make bwa
#   make align
#6. install ncurses
#7. install samtools
#   make snp

export HOME=/home/ec2-user
export APP=$HOME/applications
mkdir $APP
export DOW=$HOME/Downloads

date >> ./log

# g++
sudo yum install gcc-c++
echo "g++ done" >> $HOME/install/log

# zlib
cd $HOME/install/
./install_zlib.sh
echo "zlib" >> $HOME/install/log

# boost
cd $HOME/install/
./install_boost.sh
echo "boost" >> $HOME/install/log

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib64:/usr/local/lib/:$LD_LIBRARY_PATH
echo "LD_LIBRARY_PATH done" >> $HOME/install/log

# Split
cd $HOME/install/
./make_Split.sh
echo "Spliet done" >> $HOME/install/log

# bwa
cd $HOME/install/
./install_bwa.sh
echo "bwa done" >> $HOME/install/log

# make align
cd $HOME/install/
./make_align.sh
echo "align done" >> $HOME/install/log

# install ncurses
cd $HOME/install/
./install_ncurses.sh
echo "ncurses done" >> $HOME/install/log

# samtools
cd $HOME/install/
./install_samtools.sh
echo "samtools done" >> $HOME/install/log

# make snp
cd $HOME/install/
./make_snp.sh
echo "snp done" >> $HOME/install/log

date >> ./log
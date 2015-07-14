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

export MNT=/mnt
export APP=$MNT/applications
export DOW=$MNT/Downloads

date >> ./log

# mkdir
mkdir $APP
mkdir $APP/align
mkdir $APP/snp

# mkdir for snp
sudo mkdir /gcbi
sudo mkdir /application
sudo chown -R $USER:$USER /gcbi
sudo chown -R $USER:$USER /application
mkdir -p /gcbi/logs/sequencing-analyze/
mkdir -p /gcbi/storage/
ln -s $APP/align/hg19 /gcbi/storage/sequencing-ref

# tar software
tar -zxf $DOW/software.tar.gz -C $APP

# get
cd $MNT/install/
chmod u+x ./*.sh
./get.sh

# g++
sudo yum -y install gcc-c++
echo "g++ done" >> $MNT/install/log

# mysql
#cd $MNT/install/
#./install_mysql.sh
#echo "mysql done" >> $MNT/install/log

# zlib
cd $MNT/install/
./install_zlib.sh
echo "zlib" >> $MNT/install/log

# boost
cd $MNT/install/
./install_boost.sh
echo "boost" >> $MNT/install/log

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib64:/usr/local/lib/:$LD_LIBRARY_PATH
echo "export LD_LIBRARY_PATH=/usr/lib64:/usr/local/lib/:$LD_LIBRARY_PATH" >> ~/.bashrc
source ~/.bashrc
echo "LD_LIBRARY_PATH done" >> $MNT/install/log

# Split
cd $MNT/install/
./make_Split.sh
echo "Spliet done" >> $MNT/install/log

# bwa
#cd $MNT/install/
#./install_bwa.sh
#echo "bwa done" >> $MNT/install/log

# make align
#cd $MNT/install/
#./make_align.sh
#echo "align done" >> $MNT/install/log

# install ncurses
cd $MNT/install/
./install_ncurses.sh
echo "ncurses done" >> $MNT/install/log

# samtools
cd $MNT/install/
./install_samtools.sh
echo "samtools done" >> $MNT/install/log

# make snp
#cd $MNT/install/
#./make_snp.sh
#echo "snp done" >> $MNT/install/log

# mkdir for snp result
mkdir $MNT/sequencing-result/

date >> ./log

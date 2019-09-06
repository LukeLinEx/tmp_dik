#!/bin/bash

mkdir /home/ubuntu/Applications
mkdir /home/ubuntu/Applications/dss
cd /home/ubuntu/Applications
wget http://downloads.dataiku.com/public/studio/5.1.5/dataiku-dss-5.1.5.tar.gz

tar xzf dataiku-dss-5.1.5.tar.gz -C ./dss
cd dss
dataiku-dss-5.1.5/installer.sh -d ./data_directory -p 11200

sudo apt-get update
sudo apt-get -y install acl curl nginx unzip zip python2.7 libpython2.7 libgfortran3
./dataiku-dss-5.1.5/installer.sh -d ./data_directory -p 11200
./data_directory/bin/dss start
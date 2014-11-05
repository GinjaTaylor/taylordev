#!/bin/bash

LOG_FILE=/tmp/provision.log

touch $LOG_FILE

echo "Updating apt..." | tee $LOG_FILE
apt-get update &>> $LOG_FILE
echo "Installing extras..." | tee $LOG_FILE
apt-get install -y vim &>> $LOG_FILE

pushd /tmp &> /dev/null
echo "Downloading ChefDK..." | tee $LOG_FILE
wget http://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.2-1_amd64.deb &>> $LOG_FILE
echo "Installing ChefDK..." | tee $LOG_FILE
dpkg -i chefdk_0.3.2-1_amd64.deb &>> $LOG_FILE
popd &> /dev/null &>> $LOG_FILE
echo "Enjoy your new environment!!! :)"

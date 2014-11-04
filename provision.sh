#!/bin/bash

pushd /tmp &> /dev/null
wget http://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.2-1_amd64.deb
dpkg -i chefdk_0.3.2-1_amd64.deb
popd &> /dev/null

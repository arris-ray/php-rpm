#!/usr/bin/env bash

# Script vars
BUILDROOT=${1:-/root/rpmbuild}
PHP74_SRC_URL="https://github.com/arris-ray/php-src/archive/refs/heads/PHP-7.4.34.tar.gz"

# Install script dependencies
yum install -y wget bison re2c

###
# PHP 7.4.34
###

# Move to package directory
cd php-74

# Download zipped SRC files into a directory 
wget -N "${PHP74_SRC_URL}" 

# Unzip SRC files in target directory (don't strip components)
tar -xvzf PHP-7.4.34.tar.gz 

# Rename top-level folder
mv php-src-PHP-7.4.34 php-7.4.34

# Tar top-level folder
tar -zcvf php-7.4.34.tar.gz php-7.4.34

# Build SRPM file
rpmbuild --buildroot=${BUILDROOT} -bs php74.spec

# Move to repo root and reset state
cd ..
git reset --hard HEAD

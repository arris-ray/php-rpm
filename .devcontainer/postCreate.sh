#!/bin/bash
cd /root/rpmbuild/SOURCES
cp /workspaces/php-rpm/* .
wget https://github.com/arris-ray/php-src/archive/refs/heads/PHP-7.4.34.tar.gz
yum-builddep --enablerepo="remi" -y /workspaces/php-rpm/php74.spec 
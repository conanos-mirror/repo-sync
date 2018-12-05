#! /bin/bash
mkdir -p /dev/data/pypi/packages

# pypi-server -p 8080 -P . -a . /dev/data/pypi/packages

pip2tgz /dev/data/pypi/packages -r requirements.txt

# pip2tgz /dev/data/pypi/packages cam

dir2pi /dev/data/pypi/packages

sudo ln -s /dev/data/pypi/packages/simple /var/www/html/pypi
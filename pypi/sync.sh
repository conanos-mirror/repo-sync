#! /bin/bash
rm -rf pip2pi
git clone https://github.com/yjjnls/pip2pi.git
cd pip2pi
python3 setup.py install
cd -


mkdir -p /dev/data/pypi/packages

# pypi-server -p 8080 -P . -a . /dev/data/pypi/packages

pip2tgz /dev/data/pypi/packages -r requirements.txt

# pip2tgz /dev/data/pypi/packages cam

dir2pi /dev/data/pypi/packages

sudo ln -s /dev/data/pypi/packages/simple /var/www/html/pypi
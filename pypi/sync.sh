#! /bin/bash
sudo pip3 uninstall pip2pi
sudo rm -rf pip2pi
sudo git clone https://github.com/yjjnls/pip2pi.git
cd pip2pi
sudo python3 setup.py install
cd -


sudo mkdir -p /dev/data/pypi/packages

# pypi-server -p 8080 -P . -a . /dev/data/pypi/packages

sudo pip2tgz /dev/data/pypi/packages -r requirements.txt

# pip2tgz /dev/data/pypi/packages cam

sudo dir2pi /dev/data/pypi/packages

sudo ln -s /dev/data/pypi/packages/simple /var/www/html/pypi
#! /bin/bash
sudo apt install -y apache2

sudo mkdir -p /var/www/html/ubuntu
sudo ln -s /dev/data/ubuntu/16.04/mirror/mirrors.aliyun.com/ubuntu/ /var/www/html/ubuntu/16.04
sudo ln -s /dev/data/ubuntu/18.04/mirror/mirrors.aliyun.com/ubuntu/ /var/www/html/ubuntu/18.04

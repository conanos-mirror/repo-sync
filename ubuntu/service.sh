#! /bin/bash
sudo apt install -y apache2

sudo mkdir /var/www/html/ubuntu
sudo ln -s /dev/data/ubuntu/16.04/mirror/mirrors.aliyun.com/ubuntu/ /var/www/html/ubuntu/16.04
sudo ln -s /dev/data/ubuntu/18.04/mirror/mirrors.aliyun.com/ubuntu/ /var/www/html/ubuntu/18.04

cp -f /etc/apt/sources.list  /etc/apt/sources.list.bak 
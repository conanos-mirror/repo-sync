sudo mkdir -p /dev/data/ubuntu/16.04 /dev/data/ubuntu/16.04/mirror /dev/data/ubuntu/16.04/skel /dev/data/ubuntu/16.04/var

sudo mkdir -p /dev/data/ubuntu/18.04 /dev/data/ubuntu/18.04/mirror /dev/data/ubuntu/18.04/skel /dev/data/ubuntu/18.04/var

sudo apt-get update
sudo apt-get install -y apt-mirror

cp -f /etc/apt/mirror.list  /etc/apt/mirror.list.bak 
sudo cp -f mirror.list.18.04 /etc/apt/mirror.list

cp -f /etc/apt/sources.list  /etc/apt/sources.list.bak 
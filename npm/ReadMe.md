## install node
cd /opt
sudo wget https://nodejs.org/dist/v11.0.0/node-v11.0.0-linux-x64.tar.xz
sudo tar -xvf node-v11.0.0-linux-x64.tar.xz
sudo cp -rf node-v11.0.0-linux-x64/* /usr/local


## modify npm source
npm install -g nrm

nrm add sinopia http://192.168.199.128:4873
nrm ls
nrm use sinopia
# nrm del sinopia
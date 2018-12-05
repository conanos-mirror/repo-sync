## install node
```bash
cd /opt
sudo wget https://nodejs.org/dist/v11.0.0/node-v11.0.0-linux-x64.tar.xz
sudo tar -xvf node-v11.0.0-linux-x64.tar.xz
sudo cp -rf node-v11.0.0-linux-x64/* /usr/local
```
## start service 
```bash
sudo ./service.sh
```
`pm2` will manage the node process *backstage* and you can use `pm2 list` or `pm2 show <id>` to process it manually.

## install node module (on another machine)
### modify npm source
```bash
npm install -g nrm

nrm add sinopia http://192.168.199.128:4873
nrm ls
nrm use sinopia
# nrm del sinopia
```
### install module
```bash
npm install xxx
```
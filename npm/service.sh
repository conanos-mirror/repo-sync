npm install -g pm2

npm install verdaccio@3.8.6 --unsafe-perm

cp -f default.yaml node_modules/verdaccio/conf/default.yaml

pm2 start node_modules/verdaccio/bin/verdaccio



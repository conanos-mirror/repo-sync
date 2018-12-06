## start local docker hub service and upload docker images
Docker repo `registry` is used to provide local docker hub service.

## check images in local docker hub
curl 127.0.0.1:5000/v2/_catalog

## pull images form local docker hub
docker pull 172.16.65.42:5000/my-ubuntu:16.04

## error solution
>Error response from daemon: Get https://xxxxxxxx:5000/v1/_ping: http: server gave HTTP response to HTTPS client

sudo echo '{ "insecure-registries":    ["172.16.65.42:5000"] }' >> /etc/docker/daemon.json
sudo service docker restart

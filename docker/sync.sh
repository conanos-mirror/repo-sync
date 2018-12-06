#! /bin/bash

sudo docker run -d -p 5000:5000 --restart=always -v /dev/data/docker/registry:/var/lib/registry --name registry registry

docker pull yjjnls/emcc-docker:latest
sudo docker tag yjjnls/emcc-docker:latest 127.0.0.1:5000/yjjnls/emcc-docker:latest
sudo docker push 127.0.0.1:5000/yjjnls/emcc-docker:latest

sudo docker pull ubuntu:16.04
sudo docker tag ubuntu:16.04 127.0.0.1:5000/my-ubuntu:16.04
sudo docker push 127.0.0.1:5000/my-ubuntu:16.04

# docker pull 127.0.0.1:5000/yjjnls/emcc-docker:latest
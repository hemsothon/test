#!/bin/bash
sudo apt-get install \
        apt-transport-https \
            ca-certificates \
                curl \
                    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
          $(lsb_release -cs) \
             stable"
apt-get update
apt-get install docker-ce

apt-cache madison docker-ce

docker-ce | 17.12.0~ce-0~ubuntu | https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages

apt-get install docker-ce17.12.0-ce

docker run hello-world


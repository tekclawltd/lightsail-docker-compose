#!/bin/bash

# fix interactive install
export DEBIAN_FRONTEND=noninteractive

# install latest version of docker the lazy way
curl -sSL https://get.docker.com | sh

# make it so you don't need to sudo to run docker commands
usermod -aG docker ubuntu

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo chmod 666 /var/run/docker.sock

mkdir -p /srv
chown ubuntu -R /srv

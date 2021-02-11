#!/bin/bash

if [[ $(id -u) -ne 0 ]]; then
  echo "Please run script as root"
  exit 1	
fi

#1.1 
curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

#1.2 check installed docker version
docker-compose -v

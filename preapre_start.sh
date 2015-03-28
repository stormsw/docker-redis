#!/bin/bash
# for the first time wee need 'em'
sudo mkdir -p /opt/redis
sudo docker run --name redis -d \
  -v /opt/redis:/var/lib/redis stormsw/redis

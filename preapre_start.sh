#!/usr/bin/bash
# for the first time wee need 'em'
mkdir -p /opt/redis
docker run -name redis -d \
  -v /opt/redis:/var/lib/redis stormsw/redis

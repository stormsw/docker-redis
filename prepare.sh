#!/usr/bin/bash

mkdir -p /opt/redis
docker run -name redis -d \
  -v /opt/redis:/var/lib/redis stormsw/redis


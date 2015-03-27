# Quick Start Redis
to run it at first you need to pool this image
```
docker pull stormsw/redis
```
This container starts distributive (Ubuntu 14.10) bundled version
Redis port exported as:

* EXPOSE 6379

For persistance there external data volumes defined
VOLUME ["/var/lib/redis"]
VOLUME ["/run/redis"]

#
Run the redis image

```
docker run -name redis -d stormsw/redis
```

To connect to the server.

```
redis-cli -h $(docker inspect --format {{.NetworkSettings.IPAddress}} redis)
```

# Configuration

## Data Store
You should mount a volume at /var/lib/redis.

```
mkdir -p /opt/redis
docker run -name redis -d \
  -v /opt/redis:/var/lib/redis stormsw/redis
```

This will make sure that the data stored in the database is not lost when the image is stopped and started again.

# Shell Access

For debugging and maintenance purposes you may want access the containers shell. If you are using docker version `1.3.0` or higher you can access a running containers shell using `docker exec` command.

```bash
docker exec -it redis bash
```

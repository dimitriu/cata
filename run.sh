#!/bin/bash

docker run -d \
    --name cata \
    --restart always \
    -v /srv/docker/catalinanistor.ro/site:/usr/share/nginx/html:ro \
    -v /srv/docker/catalinanistor.ro/nginx.conf:/etc/nginx/nginx.conf:ro \
    -p 172.17.0.1:8002:80 \
    nginx

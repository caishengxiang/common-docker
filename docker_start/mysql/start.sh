#!/bin/bash
curPath=$(cd $(dirname $0);pwd)
mountPath=/mounts/mysql

docker pull mysql:5.7.38-debian
docker run --name mysql \
-d \
-p 3306:3306 \
--restart unless-stopped \
-v $mountPath/log:/var/log/mysql \
-v $mountPath/data:/var/lib/mysql \
-v $mountPath/conf:/etc/mysql \
-e MYSQL_ROOT_PASSWORD=Admin_123 \
mysql:5.7.38-debian



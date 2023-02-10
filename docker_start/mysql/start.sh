#!/bin/bash
curPath=$(cd "$(dirname "$0")";pwd)

#docker pull mysql:5.7
docker pull mysql:5.7.38-debian
docker run --name mysql \
-d \
-p 3306:3306 \
--restart unless-stopped \
-v $curPath/log:/var/log/mysql \
-v $curPath/data:/var/lib/mysql \
-v $curPath/conf:/etc/mysql \
-e MYSQL_ROOT_PASSWORD=Admin_123 \
mysql:5.7.38-debian



#!/bin/bash
docker run --name mysql \
-d \
-p 3306:3306 \
--restart unless-stopped \
-v $(pwd)/mysql/log:/var/log/mysql \
-v $(pwd)/mysql/data:/var/lib/mysql \
-v $(pwd)/mysql/conf:/etc/mysql \
-e MYSQL_ROOT_PASSWORD=Admin_123 \
mysql:5.7


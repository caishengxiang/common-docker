#!/bin/bash
curPath=$(cd $(dirname $0);pwd)
mountPath=/mounts/pgsql

docker pull postgres:13
docker run -d --name=pgsql \
-p 5432:5432 \
-v $mountPath/pgsql/data:/var/lib/postgresql/data \
-e POSTGRES_PASSWORD=Admin_123 postgres:13

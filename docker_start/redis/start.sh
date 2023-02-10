curPath=$(cd "$(dirname "$0")";pwd)
docker pull redis:7.0.1
docker run \
--name redis \
-p 6379:6379 \
-v $curPath/redis.conf:/etc/redis.conf \
-v $curPath/data:/data \
-d redis:7.0.1 redis-server /etc/redis.conf

curPath=$(cd $(dirname $0);pwd)
mountPath=/mounts/redis
cp ./redis.conf  $mountPath/redis.conf
docker pull redis:7.0.1
docker run --name redis -p 6379:6379 \
-v $mountPath/redis.conf:/etc/redis.conf \
-v $mountPath/data:/data -d \
redis:7.0.1 redis-server /etc/redis.conf

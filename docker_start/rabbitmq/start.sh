docker pull rabbitmq:3.10.25-management
mountPath=/mounts/rabbitmq

docker run -d --name rabbitmq -p 5672:5672 \
-p 15672:15672 \
-v $mountPath/data:/var/lib/rabbitmq \
--hostname localrabbitmq -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=Admin_123 rabbitmq:3.10.25-management

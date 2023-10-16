#!/bin/bash
for i in <consumer-groups-name>
do
    echo $i
    docker exec -it <zookeeper> kafka-consumer-groups --bootstrap-server <host:port> --delete --group $i
done

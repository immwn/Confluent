#!/bin/bash

for i in consumer_group_id

do
    echo $i
    docker exec -it zookeeper kafka-consumer-groups --bootstrap-server broker:9092 --delete --group $i

done
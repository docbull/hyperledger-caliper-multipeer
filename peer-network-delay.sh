#!/bin/bash

# Dongguk Univ, Gyeon-ju Campus., INLab
# REF) https://wahabjawed.medium.com/extending-hyperledger-fabric-network-adding-a-new-peer-4f52f70a7217

# shell script for invoking issue transactions

echo
echo "random network delay setup"
SEQUENCE=$(seq 0 20)
for i in $SEQUENCE
do
    rand=$(((RANDOM % 80) + 20))
    NET_DELAY=${rand}ms
    docker exec peer${i}.org1.example.com tc qdisc del dev eth0 root
    docker exec peer${i}.org1.example.com tc qdisc add dev eth0 root netem delay $NET_DELAY
    echo "peer${i} : $NET_DELAY"
done

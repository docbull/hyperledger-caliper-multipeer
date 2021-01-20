#!/bin/bash

# Dongguk Univ, Gyeon-ju Campus., INLab
# REF) https://wahabjawed.medium.com/extending-hyperledger-fabric-network-adding-a-new-peer-4f52f70a7217

# shell script for invoking issue transactions

echo
echo "network delay setup"
docker exec peer0.org1.example.com tc qdisc add dev eth0 root netem delay 58ms
docker exec peer1.org1.example.com tc qdisc add dev eth0 root netem delay 69ms
docker exec peer2.org1.example.com tc qdisc add dev eth0 root netem delay 80ms
docker exec peer3.org1.example.com tc qdisc add dev eth0 root netem delay 60ms
docker exec peer4.org1.example.com tc qdisc add dev eth0 root netem delay 56ms
docker exec peer5.org1.example.com tc qdisc add dev eth0 root netem delay 56ms
docker exec peer6.org1.example.com tc qdisc add dev eth0 root netem delay 68ms
docker exec peer7.org1.example.com tc qdisc add dev eth0 root netem delay 44ms
docker exec peer8.org1.example.com tc qdisc add dev eth0 root netem delay 92ms
docker exec peer9.org1.example.com tc qdisc add dev eth0 root netem delay 40ms
docker exec peer10.org1.example.com tc qdisc add dev eth0 root netem delay 85ms
docker exec peer11.org1.example.com tc qdisc add dev eth0 root netem delay 62ms
docker exec peer12.org1.example.com tc qdisc add dev eth0 root netem delay 20ms
docker exec peer13.org1.example.com tc qdisc add dev eth0 root netem delay 66ms
docker exec peer14.org1.example.com tc qdisc add dev eth0 root netem delay 90ms
docker exec peer15.org1.example.com tc qdisc add dev eth0 root netem delay 25ms
docker exec peer16.org1.example.com tc qdisc add dev eth0 root netem delay 55ms
docker exec peer17.org1.example.com tc qdisc add dev eth0 root netem delay 37ms
docker exec peer18.org1.example.com tc qdisc add dev eth0 root netem delay 80ms
docker exec peer19.org1.example.com tc qdisc add dev eth0 root netem delay 64ms
docker exec peer20.org1.example.com tc qdisc add dev eth0 root netem delay 81ms

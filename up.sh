#!/bin/bash

OPTS=--no-recreate

docker-compose -p "clickhouse-cluster-sample" up -d ${OPTS} zookeeper
sleep 5

docker-compose -p "clickhouse-cluster-sample" up -d ${OPTS}


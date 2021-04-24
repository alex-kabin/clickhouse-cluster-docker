@echo off

SET OPTS=--no-recreate

docker-compose -p "clickhouse-cluster-sample" up -d %OPTS% zookeeper
timeout 5

docker-compose -p "clickhouse-cluster-sample" up -d %OPTS%


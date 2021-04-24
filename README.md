Sample [Clickhouse](https://clickhouse.tech) cluster deployment for docker-compose.

Includes:
* [chproxy](https://github.com/Vertamedia/chproxy) as front proxy/balancer (available at *http://localhost:9090*)
* [Zookeeper](https://github.com/apache/zookeeper) as Clickhouse replication helper
* 4 Clickhouse nodes (2 shards with 2 replicas each): shard1 = **ch-01-01**, **ch-01-02**; shard2 = **ch-02-01**, **ch-02-02**
* [Tabix](https://github.com/tabixio/tabix) as Web UI for Clickhouse cluster (via chproxy) (available at *http://localhost:8080*)
* Clickhouse client in separate container (for command line queries) (run with `ch.cmd <node_name>`)


Start with `up.cmd`.

Stop with `down.cmd`.

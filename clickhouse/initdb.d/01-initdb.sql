CREATE DATABASE IF NOT EXISTS sample_db;

-- creating replicated table to write into
CREATE TABLE IF NOT EXISTS sample_db.visit_log (
		login String NOT NULL,
		from_url String,
		to_url String NOT NULL,
		visit_date DateTime NOT NULL
	)
	ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/{database}/{table}', '{replica}')
	PARTITION BY toDate(visit_date)
	ORDER BY (visit_date, login);

-- creating distributed table (for aggregated read)
CREATE TABLE IF NOT EXISTS sample_db.visit_log_distr AS sample_db.visit_log
	ENGINE = Distributed('sample_cluster', sample_db, visit_log);

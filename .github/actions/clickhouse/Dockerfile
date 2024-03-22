FROM clickhouse/clickhouse-server:$INPUT_VERSION-alpine

ENV CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT=1

ADD init-db.sh /docker-entrypoint-initdb.d/init-db.sh
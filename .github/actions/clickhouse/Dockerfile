FROM clickhouse/clickhouse-server:23.3.18.15-alpine

RUN printenv

ENV CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT=1

ADD init-db.sh /docker-entrypoint-initdb.d/init-db.sh
#!/bin/sh

docker run -d -e CLICKHOUSE_DB="$CLICKHOUSE_DB" \
-e CLICKHOUSE_USER="$CLICKHOUSE_USER" \
-e CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT=1 \
-e CLICKHOUSE_PASSWORD="$CLICKHOUSE_PASSWORD" \
-p 9000:9000/tcp clickhouse/clickhouse-server

FROM docker:stable

COPY clickhouse.sh /clickhouse.sh
RUN chmod +x /clickhouse.sh

ENTRYPOINT ["/clickhouse.sh"]
#!/bin/bash
set -e

clickhouse client -n <<-EOSQL
    SHOW DATABASES;
EOSQL
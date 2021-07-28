FROM postgres:9.5.3
MAINTAINER leismile <leismile@gmail.com>

ADD hive-schema-1.2.0.postgres.sql /hive/hive-schema-1.2.0.postgres.sql
ADD hive-txn-schema-0.13.0.postgres.sql /hive/hive-txn-schema-0.13.0.postgres.sql
ADD init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh

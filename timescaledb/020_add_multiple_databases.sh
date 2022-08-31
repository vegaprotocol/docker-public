#!/bin/sh

IFS=","
for v in $POSTGRES_DBS
do
   PGPASSWORD=${POSTGRES_PASSWORD} psql -U ${POSTGRES_USER} -c "CREATE DATABASE $v" -c "GRANT ALL PRIVILEGES ON DATABASE $v TO ${POSTGRES_USER}"
done
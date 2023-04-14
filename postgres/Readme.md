### SQL Dump

docker exec 16634fc69ee0 pg_dump -v -c -U postgres RAC > backup.sql

### Restoring the Dump

docker exec 16634fc69ee0 psql -U postgres -d RAC -f backup.sql
docker build -t postgresdump .
docker tag postgresdump postgresdump
docker run -v D:\docker\volumes\postgresql\data:/var/data/app -e PGHOST="172.17.0.2" -e PGPORT="5432" -e PGDATABASE="RAC" -e PGUSER="postgres" -e PGPASSWORD="admin" -e DUMP_FILE_NAME="rac_dump.sql" postgresdump
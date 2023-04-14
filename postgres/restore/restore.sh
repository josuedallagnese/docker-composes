echo "Restoring dump: $DUMP_FILE_NAME"

mkdir -p /var/data/app
cd /var/data/app

psql -U $PGUSER -d $PGDATABASE -f $DUMP_FILE_NAME

echo 'Successfully restored'
exit 0
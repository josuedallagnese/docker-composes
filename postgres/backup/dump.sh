echo "Creating dump: $DUMP_FILE_NAME"

mkdir -p /var/data/app
cd /var/data/app

pg_dump -v -C -w --blobs > $DUMP_FILE_NAME

if [ $? -ne 0 ]; then
  rm $DUMP_FILE_NAME
  echo "Back up not created, check db connection settings"
  exit 1
fi

echo 'Successfully Backed Up'
exit 0
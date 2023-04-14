FROM postgres:alpine

LABEL description="RESTORE DB - POSTGRESQL [Dump Image]"

ENV PGHOST='localhost'
ENV PGPORT='5432'
ENV PGDATABASE=''
ENV PGUSER='postgres'
ENV PGPASSWORD='admin'
ENV DUMP_FILE_NAME=''

COPY restore.sh .

ENTRYPOINT [ "/bin/sh" ]
CMD [ "./restore.sh" ]
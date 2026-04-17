FROM postgres:16

COPY --chown postgres init.sql /docker-entrypoint-initdb.d/1-init.sql

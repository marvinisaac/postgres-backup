#!/bin/sh
rm /backup/data/*.sql
rm /backup/data/*.sql.bz2
rm /backup/data/*.sql.gz

FILE=/backup/data/`date +%Y-%m-%d-%H-%M-%S`.sql
pg_dumpall --clean --user postgres | gzip -9 > $FILE.gz
# pg_dumpall --clean --user postgres | bzip2 -9 > $FILE.bz2

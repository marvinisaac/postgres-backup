#!/bin/sh
rm *.sql
rm *.sql.bz2
rm *.sql.gz

FILE=`date +%Y-%m-%d-%H-%M-%S`.sql
pg_dumpall --clean --user postgres | gzip -9 > $FILE.gz
# pg_dumpall --clean --user postgres | bzip2 -9 > $FILE.bz2

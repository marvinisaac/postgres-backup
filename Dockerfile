FROM postgres:16-alpine

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

COPY ./backup /backup
RUN crontab /backup/backup-cron

CMD [ "postgres" ]

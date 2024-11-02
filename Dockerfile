FROM postgres:16-alpine
COPY ./backup /backup
CMD [ "postgres" ]

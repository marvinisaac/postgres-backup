#!/bin/sh
crond -b

# Run the original entrypoint script
/usr/local/bin/docker-entrypoint.sh "$@"

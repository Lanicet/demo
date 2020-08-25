#!/bin/sh
set -e

envsubst < /usr/local/etc/nginx/default.tmpl > /etc/nginx/conf.d/default.conf

exec "$@"

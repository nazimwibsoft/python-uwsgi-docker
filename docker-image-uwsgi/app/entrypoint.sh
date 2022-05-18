#!/usr/bin/env sh
set -e
pip install --upgrade pip &&
pip install --no-cache-dir -r requirements.txt &&
uwsgi --ini "/app/uwsgi.conf.ini"
exec "$@"
#!/usr/bin/env sh
set -e
pip install --upgrade pip &&
pip install --no-cache-dir -r /app/requirements.txt &&
pip install --no-cache-dir -r /uwsgi/requirements.txt &&
uwsgi --ini "/uwsgi/uwsgi.conf.ini"
exec "$@"
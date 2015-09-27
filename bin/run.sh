#!/bin/sh

set -e

mkdir -p /ahrimana/static || true
mkdir -p /ahrimana/media || true
python /app/manage.py collectstatic --noinput
python /app/manage.py createdb --noinput || true
python /app/manage.py migrate --noinput
uwsgi --ini /app/uwsgi.ini

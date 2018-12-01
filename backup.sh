#!/usr/bin/env bash

set -eo pipefail

cd $(dirname "$0")
pg_dump -U miniflux_user -h localhost -d miniflux \
    | gzip -9 | gpg -e -r 'CFFA2237F1526F8F8024EAC918F1D5F4837B359D' > miniflux_backup.sql.gz.enc
git add .
git commit -m "$(date) miniflux backup" --quiet
git push origin master --quiet

cd $(dirname "$0")
pg_dump -U miniflux_user -h localhost -d miniflux | gzip -9 > miniflux_backup.sql.gz
git add .
git commit -m "$(date) miniflux backup" --quiet 
git push origin master --quiet

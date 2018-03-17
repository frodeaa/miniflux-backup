cd $(dirname "$0")
pg_dump -U miniflux_user -h localhost -d miniflux > miniflux_backup.sql
git add .
git commit -m "$(date) miniflux backup" --quiet 
git push origin master --quiet

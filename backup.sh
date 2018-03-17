pg_dump -U miniflux_user -h localhost -d miniflux > miniflux_backup.sql
git add .
git commit -m "${TODAY}" --quiet 
git push origin master

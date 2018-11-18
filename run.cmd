@echo off
rem if exists containerid.txt echo Existuje

rem docker rm pemsitegorupscnt
docker run -p 8001:80 -d --rm --name pemsitegroups-container slado/pemsitegroups
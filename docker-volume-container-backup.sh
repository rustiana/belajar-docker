--docker-volume-container-backup.sh

docker container ls

docker container stop mongovolume

mkdir backup

D:/APPS/belajar-docker/backup

docker container create --name nginxbackup --mount "type=bind,source=D:/APPS/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start mongovolume
docker container start nginxbackup
docker container ls

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

exit

docker container stop nginxbackup

docker container rm nginxbackup
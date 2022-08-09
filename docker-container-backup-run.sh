docker image pull ubuntu:latest

docker container run --rm --name ubuntubackup --mount "type=bind,source=D:/APPS/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-ubuntu.tar.gz /data

docker container stop mongovolume
docker volume create mongodata

docker container create --name mongovolume --mount "type=volume,source=mongodata,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=denrus --env MONGO_INITDB_ROOT_PASSWORD=denrus mongo:latest

docker container start mongovolume
docker container create --name mongo_data --mount "type=bind,source=D:/docker/mongodata,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=denrus --env MONGO_INITDB_ROOT_PASSWORD=denrus mongo:latest

docker container start mongo_data
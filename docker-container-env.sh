docker image pull mongo:latest

docker container create --name mongo_sample --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=denrus --env MONGO_INITDB_ROOT_PASSWORD=denrus  mongo:latest

docker container start mongo_sample

docker container publish mongo_sample 
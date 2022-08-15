docker container create --name namacontainer --network namanetwork --image:tag

docker network create --driver bridge mongonetwork

docker container create --name mongo_db --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=denrus --env MONGO_INITDB_ROOT_PASSWORD=denrus  mongo:latest

docker image pull  mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://denrus:denrus@mongo_db:27017/" mongo-express:latest

docker container start mongo_db

docker container start mongodbexpress

docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb

docker container stop mongodbexpress

docker container rm mongodbexpress


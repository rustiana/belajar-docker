docker container create --name small_nginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest

docker container start small_nginx
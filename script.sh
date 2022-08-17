--build dockerfile from
docker build -t denrus25/from from

docker ls

--build dockerfile run
docker build -t denrus25/run run --progress=plain
docker image rm denrus25/run

--test use image from container
docker container create --name container_run denrus25/run:latest
docker container start container_run
docker container rm container_run

--build dockerfile command
docker build -t denrus25/cmd cmd --progress=plain

docker image inspect denrus25/cmd

docker container create --name container_cmd denrus25/cmd
docker container start container_cmd
docker container logs container_cmd

--build dockerfile label
docker build -t denrus25/label label --progress=plain

docker image inspect denrus25/label

--build dockerfile add instruction
docker build -t denrus25/add add --progress=plain

docker container create --name container_add denrus25/add
docker container start container_add
docker container logs container_add
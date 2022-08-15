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
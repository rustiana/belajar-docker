--all delete container has stop
docker container prune

--all delete container not user container
docker image prune

--all delete network not user container
docker network prune

--all delete volume not user container
docker volume prune

--all delete container, network & image not use
docker system prune


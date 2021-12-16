#!/bin/bash -e

for x in $(docker ps -q)
#[ps] - show me all run  containers only
#[-q] - option that show only container ID 
do

	docker kill "$x"
done
#kill all  docker containers

for x in $(docker container ls --all -q)
#[ls -all] -show me all run and stop container
# -q - option that show only container ID 
do
	docker container rm "$x"
done
#remove all  docker containners


for x in $(docker image ls --all -q)
do
        docker container rm "$x"
done
#remove all docker images

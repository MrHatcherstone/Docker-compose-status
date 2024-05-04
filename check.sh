#!/bin/bash

services_array=($(docker-compose config --services))
for service in "${services_array[@]}"
do
        status_up=$(echo $(docker-compose ps -a | grep "${service}" | grep "Up"))
        if [ -n "${status_up}" ]; then
                echo "${service}, Up"
        else
                echo "${service} not Up"
                exit 1
        fi
done

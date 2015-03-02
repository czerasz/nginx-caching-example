#!/bin/bash

script_directory="$( cd "$( dirname "$0" )" && pwd )"
project_directory=$script_directory/..

# Remove the old container
docker rm -f nginx-cache-example

# Start a new container
docker run --name nginx-cache-example \
           -p 8080:80 \
           -d czerasz/nginx-cache-example


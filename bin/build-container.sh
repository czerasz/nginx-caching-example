#!/bin/bash

script_dirirectory="$( cd "$( dirname "$0" )" && pwd )"
project_directory=$script_dirirectory/..

cd $project_directory
docker build -t czerasz/nginx-cache-example .

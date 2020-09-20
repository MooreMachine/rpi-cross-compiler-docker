#!/bin/bash

CONTAINER_ID=$(docker run \
    --name arm-xcompiler-test \
    --rm \
    -i \
    -t \
    -d \
    -v $(pwd)/sample-code:/home \
    arm-xcompiler:0.1.0)

docker exec \
    -w '/home' \
    arm-xcompiler-test \
    sh -c 'make assembly && make'

docker container stop -t 0 $CONTAINER_ID


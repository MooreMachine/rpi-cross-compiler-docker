#!/bin/bash

get_version() {
    local VERSION=$(cat README.md | grep "Version" | awk '{print $2}')
    echo $VERSION
}

docker_run() {
    local CONTAINER_ID=$(docker run \
        --name arm-xcompiler-test \
        --rm \
        -i \
        -t \
        -d \
        -v $(pwd)/sample-code:/home \
        arm-xcompiler:0.1.0)
    echo $CONTAINER_ID
}

docker_exec() {
    docker exec \
        -w '/home' \
        arm-xcompiler-test \
        sh -c 'make assembly && make'
}

docker_stop() {
    docker container stop -t 0 $1
}

main() {
    local VERSION=$(get_version)
    local CONTAINER_ID=$(docker_run $VERSION)
    docker_exec
    docker_stop $CONTAINER_ID
}

main


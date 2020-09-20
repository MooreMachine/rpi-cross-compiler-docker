#!/bin/bash

get_version() {
    local VERSION=$(cat README.md | grep "Version" | awk '{print $2}')
    echo $VERSION
}

main() {
    local VERSION=$(get_version)
    docker run \
        --rm \
        -it \
        -v $(pwd)/sample-code:/home \
        -w '/home' \
        arm-xcompiler:$VERSION
}

main


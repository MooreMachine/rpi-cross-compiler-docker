#!/bin/bash

docker run \
    --rm \
    -it \
    -v $(pwd)/sample-code:/home \
    -w '/home' \
    arm-xcompiler:0.1.0


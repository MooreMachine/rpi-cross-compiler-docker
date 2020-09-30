FROM debian:10-slim

RUN apt-get update \
    && apt-get -y install \
    make \
    libc6=2.28-10 \
    gcc-8-arm-linux-gnueabihf \
    binutils-arm-linux-gnueabihf


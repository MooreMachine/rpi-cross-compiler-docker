FROM ubuntu:18.04

RUN apt-get update \
    && apt-get -y install \
    make \
    gcc-8-arm-linux-gnueabihf \
    binutils-arm-linux-gnueabihf


FROM ubuntu:14.04

MAINTAINER mtdxc

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
WORKDIR /root

# Download latest version of the code and install dependencies
RUN  apt-get update && apt-get install -y git wget curl

COPY android/build.sh /root
RUN source ./build.sh && \
    install_dependencies && \
    get_webrtc 1008ac1d53cacb04418ec3f3da9269e2287b0a7f
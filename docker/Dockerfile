FROM ubuntu:16.04

MAINTAINER vunguyen "vu.nguyen@dst.defence.gov.au"

# USAGE: docker run -it -v ~/raspberry/hello:/build mitchallen/pi-cross-compile

RUN apt-get update -yq && \
    apt-get upgrade -yq && \
    apt-get install -yq git build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone --progress --verbose https://github.com/raspberrypi/tools.git --depth=1 tools

COPY pi.cmake /root/pi.cmake

ENV BUILD_FOLDER /build

WORKDIR ${BUILD_FOLDER}

CMD ["/bin/bash", "-c", "make", "-f", "${BUILD_FOLDER}/Makefile"]

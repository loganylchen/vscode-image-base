FROM ubuntu:22.04

ENV PATH=/opt/bin/:$PATH
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/bin

RUN apt update -y && \
    apt install -y \
    python3 python3-dev python3-pip \
    r-base libcurl4-openssl-dev libssl-dev curl wget \
    libxml2-dev libproj-dev libfontconfig1-dev git liblz4-dev libzstd-dev \
    libmagick++-dev \
    libharfbuzz-dev libfribidi-dev build-essential cmake && \
    pip3 install jupyter==1.0.0 && \
    pip3 install ipykernel==6.22.0 && \
    Rscript -e "install.packages(c('BiocManager','devtools','languageserver','IRkernel'))"  && \
    rm -rf /tmp/*






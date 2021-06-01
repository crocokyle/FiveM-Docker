# syntax=docker/dockerfile:1
FROM ubuntu:latest
RUN mkdir ~/FXServer
RUN mkdir ~/FXServer/server
RUN mkdir ~/FXServer/server-data
RUN apt-get update \
  && apt-get install -y wget git xz-utils python3.4 python3-pip \
  && rm -rf /var/lib/apt/lists/*
RUN python -m pip install beautifulsoup4
RUN wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/3874-31c784e5970e835e8d1bcad6f098e7ef5a651200/fx.tar.xz 
RUN tar xf fx.tar.xz -C ~/FXServer/server
RUN rm fx.tar.xz
RUN git clone https://github.com/citizenfx/cfx-server-data.git ~/FXServer/server-data
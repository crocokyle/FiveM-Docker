# syntax=docker/dockerfile:1
FROM ubuntu:latest
RUN mkdir ~/FXServer
RUN mkdir ~/FXServer/server
RUN mkdir ~/FXServer/server-data
RUN apt-get update \
  && apt-get install -y wget git xz-utils python3.4 python3-pip \
  && rm -rf /var/lib/apt/lists/*
RUN pip3 install beautifulsoup4
RUN pip3 install requests
RUN wget https://raw.githubusercontent.com/crocokyle/FiveM-Docker/main/getLatestCFXBuild.py
RUN python3 getLatestCFXBuild.py
RUN tar xf fx.tar.xz -C ~/FXServer/server
RUN rm fx.tar.xz
RUN git clone https://github.com/citizenfx/cfx-server-data.git ~/FXServer/server-data
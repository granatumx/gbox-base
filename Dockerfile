## Emacs, make this -*- mode: sh; -*-
 
FROM ubuntu:rolling

MAINTAINER "GranatumX" granatumx@yahoo.com

ENV DEBIAN_FRONTEND noninteractive
ENV TZ America/New_York

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential 
RUN apt-get install -y libxml2-dev 
RUN apt-get install -y sed 
RUN apt-get install -y bash 
RUN apt-get install -y wget 
RUN apt-get install -y curl

WORKDIR /usr/src/app

COPY . .

ARG VER=1.0.0
ARG GBOX=please-set-your/gbox:variable
ENV VER=$VER
ENV GBOX=$GBOX

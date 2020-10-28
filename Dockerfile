## Emacs, make this -*- mode: sh; -*-
 
FROM ubuntu:rolling

MAINTAINER "GranatumX" lana.garmire.group@gmail.com

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
RUN apt-get update

WORKDIR /usr/src/app

COPY . .

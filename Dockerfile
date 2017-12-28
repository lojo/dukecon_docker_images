FROM maven:slim
MAINTAINER Gerd Aschemann <gerd@aschemann.net>

RUN apt-get update && apt-get -qq dist-upgrade && apt-get install -qq -y git && apt-get autoremove

FROM maven:slim
MAINTAINER Gerd Aschemann <gerd@aschemann.net>

RUN apt-get update && apt-get -qq dist-upgrade
RUN apt-get install -qq -y git
RUN apt-get install -qq -y glib-2.0 libgconf-2-4 chromium
RUN apt-get autoremove

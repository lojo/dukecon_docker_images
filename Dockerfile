FROM maven:slim
MAINTAINER Gerd Aschemann <gerd@aschemann.net>

RUN apt-get update && apt-get -qq dist-upgrade && apt-get install -qq -y git glib-2.0 libgconf-2-4 chromium && apt-get autoremove

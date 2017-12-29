FROM node:slim
MAINTAINER Gerd Aschemann <gerd@aschemann.net>

ADD openjdk.list /etc/apt/sources.list.d/openjdk.list

RUN apt-get update && apt-get -qq dist-upgrade
RUN apt-get install -qq -y git
RUN apt-get install -qq -y glib-2.0 libgconf-2-4 chromium
RUN apt-get install -qq -y iceweasel
RUN apt-get install -qq -y xvfb
RUN apt-get install -qq -y bzip2
RUN apt-get -t jessie-backports install -qq -y openjdk-8-jre-headless ca-certificates-java
RUN apt-get autoremove

RUN npm install phantomjs-prebuilt

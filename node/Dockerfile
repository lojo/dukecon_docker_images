FROM node:slim
MAINTAINER Gerd Aschemann <gerd@aschemann.net>

RUN apt-get update && apt-get -qq dist-upgrade
RUN apt-get install -qq -y git
RUN apt-get install -qq -y glib-2.0 libgconf-2-4 chromium
RUN apt-get install -qq -y iceweasel
RUN apt-get install -qq -y xvfb
RUN apt-get install -qq -y bzip2
RUN apt-get install -qq -y default-jre
RUN apt-get autoremove

RUN npm install phantomjs-prebuilt

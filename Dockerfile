############################################################
# Dockerfile to build test container images
# Based on Ubuntu
############################################################

FROM ubuntu

MAINTAINER Example liww

################## BEGIN INSTALLATION ######################
RUN echo 'hello world'
# Create the default data directory

RUN echo 'hello world1'
RUN echo 'hello world2'
RUN echo 'hello world3'
RUN echo 'hello world4'
##################### INSTALLATION END #####################

RUN mkdir -p /usr/bin/src/
ADD janus-gateway-256b668-b79.tgz /usr/bin/src/janus-gateway.tgz
RUN cd /usr/bin/src/ 
RUN tar zxvf janus-gateway.tgz 
RUN rm janus-gateway.tgz


EXPOSE 27017
EXPOSE 28017


FROM ubuntu
MAINTAINER Adrian B
RUN apt-get update
RUN apt-get install software-properties-common

RUN add-apt-repository ppa:fkrull/deadsnakes

RUN apt-get update

RUN apt-get install python3.5


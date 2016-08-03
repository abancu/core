FROM ubuntu
MAINTAINER Adrian B
RUN sudo apt-get update
RUN sudo pt-get install software-properties-common

RUN sudo add-apt-repository ppa:fkrull/deadsnakes

RUN sudo apt-get update

RUN sudo apt-get install python3.5
RUN sudo apt-get install python-pip python-dev build-essential
RUN sudo pip install --upgrade pip
RUN sudo pip install --upgrade virtualenv
RUN sudo pip install --upgrade six


RUN sudo mkdir -p /var/www/python

WORKDIR /var/www/python

COPY * .

RUN sudo ython setup.py install
RUN sudo python tut.py


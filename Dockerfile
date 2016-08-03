FROM ubuntu
MAINTAINER Adrian B
RUN apt-get update
RUN apt-get install software-properties-common

RUN add-apt-repository ppa:fkrull/deadsnakes

RUN apt-get update

RUN apt-get install python3.5
RUN apt-get install python-pip python-dev build-essential
RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv
RUN pip install --upgrade six


RUN mkdir -p /var/www/python

WORKDIR /var/www/python

COPY * .

RUN python setup.py install
RUN python tut.py


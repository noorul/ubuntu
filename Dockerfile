FROM ubuntu:14.04

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    apt-get update && apt-get -y install python-pip vim gettext-base wget jq && \
    rm -rf /var/lib/apt/lists/*

RUN pip install pika protobuf==2.6.1

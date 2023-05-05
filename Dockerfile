FROM ubuntu:latest

RUN apt-get update \
        && apt-get -y upgrade \
        && apt-get install -y openconnect iputils-ping ocproxy openssh-client sshpass rsync jq git nodejs

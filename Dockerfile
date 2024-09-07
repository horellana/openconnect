FROM ubuntu:latest

RUN apt-get update \
        && apt-get -y upgrade \
        && apt-get install -y openconnect iputils-ping ocproxy openssh-client sshpass rsync make curl gettext-base sudo bridge-utils \
	&& mkdir -p /dev/net \
    	&& mknod /dev/net/tun c 10 200  \
	&& chmod 600 /dev/net/tun \
        && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
        && mv kubectl /usr/local/bin/kubectl \
        && chmod +x /usr/local/bin/kubectl

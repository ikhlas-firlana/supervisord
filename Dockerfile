FROM ubuntu:18.04

WORKDIR /root

# update depedencies
RUN apt-get update -y && apt-get upgrade -y

# get package node
RUN apt-get install -y curl \
    sudo
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# install node and supervisord
RUN apt-get install -y nodejs \
    supervisor

# Copy resource into docker image
COPY . .
COPY ./supervisord.conf /etc/supervisor/conf.d/


# ENTRYPOINT [ "/bin/bash", "start.forever.sh" ]
ENTRYPOINT ["/usr/bin/supervisord"]

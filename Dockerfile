FROM node:9
MAINTAINER Lars Bahner <lars.bahner@gmail.com>

RUN apt-get update && apt-get -y dist-upgrade
RUN rm /etc/bash.bashrc
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

COPY nvm /usr/local/bin/
RUN chmod +x /usr/local/bin/nvm

ENTRYPOINT /bin/bash

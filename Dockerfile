FROM node:12-slim
RUN cd /tmp \
  && apt-get update \
  && apt-get install -y --no-install-recommends git \
  && wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.1.tgz \
  && tar -xvf docker*.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -rf /tmp/* /var/lib/apt/lists/*

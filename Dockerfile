# Basically controls how your cloud server create a virtual machine.
# This is a Dockerfile that defines the environment for a Docker container.

FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML

# Copy file from repository to the container(image)
COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


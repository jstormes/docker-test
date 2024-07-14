FROM ubuntu:latest

RUN apt-get update &&  \
    apt-get install -y openssh-client

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=ssh ssh -o "StrictHostKeyChecking no" git@github.com
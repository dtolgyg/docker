FROM mcr.microsoft.com/azure-cli:latest

RUN \
  apk update && \
  apk add py3-pip && \
  pip3 install azure-data-tables && \
  rm -rf /var/cache/apk/*

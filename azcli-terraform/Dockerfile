FROM mcr.microsoft.com/azure-cli:latest

ARG TERRAFORM_VERSION=1.0.6

RUN \
  apk update && \
  apk add curl unzip && \
  cd /tmp && \
  curl -sSL --output terraform_${TERRAFORM_VERSION}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
  rm -rf /tmp/* && \
  rm -rf /var/cache/apk/*

FROM hashicorp/terraform:1.0.6

RUN \
  apk update && \
  apk add bash py-pip && \
  apk add --virtual=build gcc libffi musl openssl python3 make && \
  pip --no-cache-dir install -U pip && \
  pip install azure-cli && \
  apk del --purge build


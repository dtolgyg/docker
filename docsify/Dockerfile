FROM nginx:1.20.0-alpine

ARG DOCSIFY_VERSION=4.12.1

RUN curl -sSL --output docsify-${DOCSIFY_VERSION}.tar.gz https://github.com/docsifyjs/docsify/archive/refs/tags/v${DOCSIFY_VERSION}.tar.gz && \
    tar -C /tmp -xzf docsify-${DOCSIFY_VERSION}.tar.gz docsify-${DOCSIFY_VERSION}/docs && \
    rm -rf /usr/share/nginx/html && \
    ln -s /tmp/docsify-${DOCSIFY_VERSION}/docs /usr/share/nginx/html

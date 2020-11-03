FROM alpine:latest

LABEL description "Base image, for containers built on alpine"

RUN apk update && apk upgrade && \
	apk add ca-certificates bash && \
	rm -rf /var/cache/apk/*

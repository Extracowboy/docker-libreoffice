FROM alpine:3

RUN apk update && apk add --no-cache openjdk8 && apk add libreoffice

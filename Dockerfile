FROM alpine:3

COPY registrymodifications.xcu /root
RUN apk update && apk add --no-cache openjdk8 && apk add libreoffice
RUN mkdir -p /root/.config/libreoffice/4/user
RUN cp /root/registrymodifications.xcu /root/.config/libreoffice/4/user/

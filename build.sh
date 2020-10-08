#!/bin/bash

docker build --tag alpine-libreoffice .
docker create --name doc-converter -i -t --rm alpine-libreoffice

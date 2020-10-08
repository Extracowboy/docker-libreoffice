#!/bin/bash
# $1 - file to convert
# $2 - convert to [pdf, html, etc] (default - pdf)

absolutePath=$(realpath $1)
mountDir="${absolutePath%/*}"
originalFile="${absolutePath##*/}"

docker run -it --rm \
  --mount type=bind,source="$mountDir",target=/tmp \
  alpine-libreoffice \
  libreoffice --nologo --headless --convert-to "$2" /tmp/"$originalFile" --outdir /tmp
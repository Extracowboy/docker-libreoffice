#!/bin/bash
#
# $1 - file to convert
# $2 - convert to [pdf, html, etc]

docker start doc-converter

originalFileFullPath=$1
originalFile="${originalFileFullPath##*/}"
docker cp $1 doc-converter:/"$originalFile"
docker exec -it doc-converter libreoffice --nologo --headless --convert-to "$2" /"$originalFile"

outputFile="${originalFile%.*}".pdf
docker cp doc-converter:/"$outputFile" ./
docker exec -it doc-converter rm "$originalFile" "$outputFile"

docker stop doc-converter

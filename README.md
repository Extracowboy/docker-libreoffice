docker-libreoffice
==========
Create lightweight (kinda) docker container with LibreOffice inside. Use it for converting documents, spreadsheets and such to PDF, HTML, etc.

Usage:
----------
1. Create docker image. It can be done in two ways:
    * create image locally by executing **build.sh** script
    * pull it from docker hub:
      * `docker pull extracowboy/alpine-libreoffice`
      * then create container: `docker create --name doc-converter -i -t extracowboy/alpine-libreoffice`

2. launch **convert.sh** script with parameters: `sh convert.sh <file_to_convert> <output_format>`

Example (Linux):
`sh convert.sh ./Meh.docx pdf`

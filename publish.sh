#!/usr/bin/env bash
docker build -t aspnetcore-wkhtmltopdf .
docker tag aspnetcore-wkhtmltopdf zlzforever/aspnetcore-wkhtmltopdf
docker push zlzforever/aspnetcore-wkhtmltopdf
tag=$(date +%Y%m%d%H%M%S)
docker tag aspnetcore-wkhtmltopdf zlzforever/aspnetcore-wkhtmltopdf:$tag
docker push zlzforever/aspnetcore-wkhtmltopdf:$tag
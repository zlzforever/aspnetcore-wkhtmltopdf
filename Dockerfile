FROM microsoft/dotnet:2.2-aspnetcore-runtime
COPY ./wkhtmltox /usrtmp
RUN (cd /usrtmp && tar c .) | (cd /usr && tar xf -) && \
    chmod 555 /usr/bin/wkhtmltopdf && \
    apt-get update && \
    apt-get install -y --no-install-recommends zlib1g fontconfig libfreetype6 libx11-6 libxext6 libxrender1 && \
    rm -rf /var/lib/apt/lists/*
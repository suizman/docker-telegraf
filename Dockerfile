FROM ubuntu:16.04

ENV PKG=telegraf-0.12.1-1_linux_amd64.tar.gz

WORKDIR /

# Get latest telegraf package
ADD http://get.influxdb.org/telegraf/telegraf-0.12.1-1_linux_amd64.tar.gz /tmp

# Install telegraf
RUN tar xvf /tmp/$PKG

# Clean stuff
RUN rm -rf /tmp/* && \
    rm -rf /var/cache/apt/* && \
    rm -rf /var/tmp/*

ENTRYPOINT ["/usr/bin/telegraf"]

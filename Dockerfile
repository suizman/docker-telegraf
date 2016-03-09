FROM ubuntu:15.10

ENV PKG=telegraf_0.10.4.1-1_amd64.deb

# Get latest telegraf package
ADD http://get.influxdb.org/telegraf/telegraf_0.10.4.1-1_amd64.deb /tmp

# Install telegraf
RUN dpkg -i /tmp/$PKG

# Clean stuff
RUN rm -rf /tmp/* && \
    rm -rf /var/cache/apt/* && \
    rm -rf /var/tmp/*

ENTRYPOINT ["/usr/bin/telegraf"]

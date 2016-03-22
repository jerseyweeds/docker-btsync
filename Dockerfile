# BitTorrent Sync for ARM
# VERSION 0.2

FROM resin/rpi-raspbian:wheezy

MAINTAINER jerseyweds <@jerseyweeds>

# Download and extract the executable to /usr/bin
ADD http://download-new.utorrent.com/endpoint/btsync/os/linux-arm/track/stable /usr/bin/bittorrent_sync_arm.tar.gz
RUN cd /usr/bin && tar -xzvf bittorrent_sync_arm.tar.gz && rm bittorrent_sync_arm.tar.gz

# Web GUI
EXPOSE 8888
# Listening port
EXPOSE 55555

ENTRYPOINT ["btsync"]
CMD ["--config", "/btsync/btsync.conf", "--nodaemon"]

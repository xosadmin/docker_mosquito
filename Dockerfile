FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y mosquitto mosquitto-clients && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log

COPY mosquitto.conf /mosquitto/config/mosquitto.conf

EXPOSE 1883 9001

VOLUME ["/mosquitto/config", "/mosquitto/data", "/mosquitto/log"]

ENTRYPOINT ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]

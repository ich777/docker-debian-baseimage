FROM debian:bullseye-slim

LABEL org.opencontainers.image.authors="admin@minenet.at"
LABEL org.opencontainers.image.source="https://github.com/ich777/docker-debian-baseimage"

RUN  echo "deb http://deb.debian.org/debian bullseye contrib non-free" >> /etc/apt/sources.list && \
	apt-get update && \
	apt-get -y install --no-install-recommends wget locales procps && \
	touch /etc/locale.gen && \
	echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
	locale-gen && \
	apt-get -y install --reinstall ca-certificates && \
	rm -rf /var/lib/apt/lists/*

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
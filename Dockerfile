FROM debian:buster-slim

MAINTAINER ich777

RUN apt-get update && \
	apt-get -y install --no-install-recommends wget locales && \
	touch /etc/locale.gen && \
	echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
	locale-gen
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
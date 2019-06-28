# Inspired from https://github.com/justb4/docker-jmeter
# Ubuntu as base image
FROM ubuntu:18.04

# Install Java 8 JRE
RUN apt-get update \
    && apt-get -y install openjdk-8-jre wget

# Environment variables
ARG JMETER_VERSION="5.1.1"
ENV JMETER_HOME /opt/apache-jmeter-${JMETER_VERSION}
ENV	JMETER_BIN	${JMETER_HOME}/bin
ENV	JMETER_DOWNLOAD_URL  https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz

# Install jmeter
RUN mkdir -p /tmp/dependencies \
    && wget -P /tmp/dependencies/ ${JMETER_DOWNLOAD_URL} \
    && mkdir -p /opt/ \
    && tar -xzf /tmp/dependencies/apache-jmeter-${JMETER_VERSION}.tgz -C /opt \
    && rm -rf /tmp/dependencies \ 
    && apt-get -y remove wget

# Copy entrypoint.sh
COPY entrypoint.sh $JMETER_BIN

RUN chmod +x $JMETER_BIN/entrypoint.sh

ENV PATH $PATH:$JMETER_BIN

WORKDIR	${JMETER_HOME}

ENTRYPOINT ["entrypoint.sh"]
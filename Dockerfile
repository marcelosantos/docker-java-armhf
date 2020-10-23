#
# Oracle Java 8 Dockerfile for ARMv7
#
# Derived from
# https://github.com/umiddelb/armhf-java8
#

FROM armv7/armhf-ubuntu:16.04

MAINTAINER Marcelo Santos marcelosantosadm@gmail.com

# Install Java.
RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties

RUN \
  add-apt-repository ppa:openjdk-r/ppa \
  && apt-get update \
  && apt-get -y install openjdk-8-jre-headless \
  && apt-get -y install openjdk-8-jre \
  && apt-get -y install wget \
  && apt-get -y install unzip \
  && apt-get -y install vim

  #apt-get update \
  #&& apt-get -y install default-jdk \
  #&& apt-get -y install openjdk-8-jdk \

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-armhf
#ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
#ENV JAVA_HOME /usr/bin

# Define default command.
CMD ["bash"]

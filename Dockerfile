##############################################################################
# This dockerfile will setup a centos container with OpenJDK installed on it #
##############################################################################

FROM centos:7.5.1804

MAINTAINER Loic Mathieu <loicmathieu@free.fr>

RUN curl https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz -o /tmp/jdk-11_linux-x64_bin.tar.gz && \
    mkdir /usr/lib/openjdk-11 && \
    tar xzf /tmp/jdk-11_linux-x64_bin.tar.gz -C /usr/lib/openjdk-11 && \
    rm /tmp/jdk-11_linux-x64_bin.tar.gz

ENV JAVA_HOME /usr/lib/openjdk-11

CMD ["java", "-version"]

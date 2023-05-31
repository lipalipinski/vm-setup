FROM jenkins/jnlp-agent-docker:latest

USER root

RUN wget -O /etc/apk/keys/adoptium.rsa.pub https://packages.adoptium.net/artifactory/api/security/keypair/public/repositories/apk && \
echo 'https://packages.adoptium.net/artifactory/apk/alpine/main' >> /etc/apk/repositories && \
apk add temurin-17-jdk

ENV JAVA_HOME="/usr/lib/jvm/java-17-temurin"

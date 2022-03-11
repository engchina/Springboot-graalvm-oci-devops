FROM ghcr.io/oracle/oraclelinux:7-slim

COPY /target/native-image/hello-spring-boot-app hello-spring-boot-app

RUN ./hello-spring-boot-app

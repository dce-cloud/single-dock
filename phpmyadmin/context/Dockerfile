ARG DOCKER_REGISTRY_URL=
ARG PMA_VERSION=latest
FROM ${DOCKER_REGISTRY_URL}phpmyadmin:${PMA_VERSION}

LABEL maintainer="zaizai <373045134@qq.com>"

ENV TZ=Asia/Shanghai

VOLUME /sessions

EXPOSE 80

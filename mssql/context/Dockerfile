ARG DOCKER_REGISTRY_URL=
ARG MSSQL_VERSION=${MSSQL_VERSION}
FROM ${DOCKER_REGISTRY_URL}mcr.microsoft.com/mssql/server:${MSSQL_VERSION}-latest

LABEL maintainer="zaizai <373045134@qq.com>"

ENV TZ=Asia/Shanghai

VOLUME /var/opt/mssql

EXPOSE 1433

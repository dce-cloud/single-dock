# single-dock

基于 Docker Compose 快速搭建单机环境

# IP地址
内部IP地址：172.25.25.25 开始

# 服务清单

| status | service | backend ip | version | 备注 |
|---|---|---|---|---|
| [&check;] | portainer | 172.25.25.3 | 2.25.1-alpine | 127.0.0.1:19000 打开控制台 |
| [&check;] | busybox | 172.25.25.4 | latest | |
| [&check;] | mysql57 | 172.25.25.25 | 5.7 | |
| [&check;] | mysql8 | 172.25.25.26  | 8.0~8.3 | 默认是 8.3 |
| [&check;] | redis | 172.21.4.7 | 7.4 | |
| [&check;] | redis-stack | 172.21.4.8 | 7.4.0-v1 | |
| [&check;] | memcached | 172.21.4.9 | 1.6.33 | |
| [&check;] | mongo | 172.21.4.10 | 7.0.5 | |
| [&check;] | mongo-webui | 172.21.4.11 | latest | |
| [&check;] | phpmyadmin | 172.21.4.12 | 5.2.1 | |
| [&cross;] | postgres | 172.21.4.13 | 16.2 | |
| [&cross;] | pgadmin | 172.21.4.14 | latest | |
| [&cross;] | postgres-postgis | 172.21.4.15 | latest | |

# 使用到的镜像
- 默认使用docker.io 镜像
- 若想使用自定义仓库镜像，需要定义 DOCKER_REGISTRY_URL 变量

```json
[
    "traefik:v3.4",
    "docker:28.3.0-dind-alpine3.22",
    "jenkins.jenkins:alpine3.22-jdk17",
    "node:12.22.1-alpine",
    "node:18.20.4-alpine",
    "node:20.18.1-alpine",
    "nginx:1.29-alpine",
    "nginxinc/nginx-unprivileged:1.29-alpine-otel",
    "nginxinc/nginx-unprivileged:1.29-alpine"
    "alpine:3.22.1",
    "portainer/portainer-ce:2.31.2-alpine",
    "php:5.6.40-apache",
    "grafana/grafana:12.0.2",
    "grafana/loki:3",
    "grafana/alloy:v1.10.0",
    "fluent/fluent-bit:4.0.4",
    "tonistiigi/binfmt",
    "ninedata/ninedata:latest",
    "bitnami/mysql:5.7.43",
    "redis:8.0.3-alpine",
    "eclipse-temurin:17-jre-alpine",
    "maven:3.8.3-eclipse-temurin-17",
    "postgres:17.5-alpine3.22",
    "sonarqube:9.9-community",
    "node:14.21.3-alpine",
    "node:16.20.2-alpine",
    "hashicorp/vault:1.20",
    "mongo:7.0-jammy",
    "mongo:8.0-noble",
    "mongo:4.4",
    "easysoft/zentao:21.7.2",
    "sonarsource/sonar-scanner-cli:11",
    "python:2.7-slim-buster",
    "php:5.6-cli-stretch",
    "rancher/rancher:stable",
    "mcuadros/ofelia:0.3.18"
]
```

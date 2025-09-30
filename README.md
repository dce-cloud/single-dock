# single-dock

基于 Docker Compose 搭建的单体服务环境

# IP地址
内部IP地址从 172.25.25.3 开始

# 服务清单

| status | service | backend ip | version | 备注 |
|---|---|---|---|---|
| [&check;] | portainer | 172.25.25.3 | 2.33.2-alpine | 127.0.0.1:19000 打开控制台 |
| [&check;] | busybox | 172.25.25.4 | 1.37 | |
| [&check;] | mysql57 | 172.25.25.25 | 5.7 | |
| [&check;] | mysql8 | 172.25.25.26  | 8.0~8.3 | 默认是 8.3 |
| [&check;] | redis | 172.25.25.27 | 7.4 | |
| [&check;] | redis-stack | 172.25.25.28 | 7.4.0-v1 | |
| [&check;] | memcached | 172.25.25.29 | 1.6.39 | |
| [&check;] | mongo | 172.25.25.30 | 8.0.14 | |
| [&check;] | postgres | 172.25.25.31 | 16.2 | |
| [&check;] | postgres-postgis | 172.25.25.32 | latest | |
| [&cross;] | mongo-webui | 172.25.25.100 | latest | |
| [&cross;] | phpmyadmin | 172.25.25.101 | 5.2.1 | |
| [&cross;] | pgadmin | 172.25.25.102 | latest | |

# 使用到的镜像
```json
[
    "portainer/portainer-ce:2.31.2-alpine",
    "busybox:1.37",
    "bitnami/mysql:5.7.43",
    "bitnami/mysql:8.3",
    "redis:7.4-alpine",
    "redis/redis-stack:7.4.0-v1",
    "memcached:1.6.39",
    "mongo:8.0.14",
]
```

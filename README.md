# Docker SRE Lab

## 项目简介

这是一个面向 SRE/DevOps 入门的 Docker Compose 实验项目，包含 Flask Web 服务、Redis、Nginx 反向代理、健康检查、数据持久化、备份脚本和 GitHub Actions CI。

## 技术栈

- Python Flask
- Redis
- Nginx
- Docker
- Docker Compose
- GitHub Actions

## 架构

用户请求进入 Nginx，Nginx 将请求反向代理到 Flask Web 服务，Web 服务读写 Redis。

```text
Client -> Nginx -> Flask Web -> Redis

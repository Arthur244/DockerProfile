```bash
# 查看帮助
docker compose -h
# 启动所有docker compose服务
docker compose up
# 启动所有docker-compose服务并后台运行
docker compose up -d
# 停止并删除容器、网络、卷、镜像。
docker compose down
# 进入容器实例内部  docker-compose exec docker-compose.yml文件中写的服务id /bin/bash
docker compose exec  yml里面的服务id
# 展示当前docker-compose编排过的运行的所有容器
docker compose ps
# 展示当前docker-compose编排过的容器进程
docker compose top
# 查看容器输出日志
docker compose logs  yml里面的服务id
# 检查配置
docker compose config
# 检查配置，有问题才有输出
docker compose config -q
# 重启服务
docker compose restart
# 启动服务
docker compose start
# 停止服务
docker compose stop
```
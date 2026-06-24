#!/bin/sh
set -e

BACKUP_DIR="./backups"
CONTAINER_NAME="sre-lab-redis"

mkdir -p "$BACKUP_DIR"

docker exec "$CONTAINER_NAME" redis-cli SAVE

docker cp "$CONTAINER_NAME":/data/dump.rdb "$BACKUP_DIR/dump-$(date +%Y%m%d-%H%M%S).rdb"

echo "backup completed"

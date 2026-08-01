#!/usr/bin/env sh
set -eu

: "${APP_IMAGE:?APP_IMAGE is required}"

cd "$(dirname "$0")"

docker network inspect nilx-edge >/dev/null 2>&1
APP_IMAGE="$APP_IMAGE" docker compose config >/dev/null

# Adopt the stable container name from any previous deployment mechanism.
# The public edge reaches the workload through the nilx-one network alias,
# so replacing this single container is the intended activation boundary.
if docker container inspect nilx-one >/dev/null 2>&1; then
  docker rm -f nilx-one >/dev/null
fi

APP_IMAGE="$APP_IMAGE" docker compose up -d --no-build --remove-orphans

container="$(APP_IMAGE="$APP_IMAGE" docker compose ps --quiet app)"
test -n "$container"

attempt=1
while [ "$attempt" -le 12 ]; do
  status="$(docker inspect --format '{{.State.Health.Status}}' "$container" 2>/dev/null || true)"
  [ "$status" = healthy ] && break
  sleep 5
  attempt=$((attempt + 1))
done

[ "$(docker inspect --format '{{.State.Health.Status}}' "$container")" = healthy
docker exec "$container" wget -qO- http://127.0.0.1:8080/health | grep -qx ok

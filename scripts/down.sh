#!/usr/bin/env bash
set -e

# stop services
docker compose -f services/sftp/docker-compose.yml down
docker compose -f services/n8n/docker-compose.yml down
docker compose -f services/forgejo/docker-compose.yml down

# stop dependencies
docker compose -f services/tailscale/docker-compose.yml down
docker compose -f services/postgres/docker-compose.yml down
docker compose -f services/cloudflared/docker-compose.yml down

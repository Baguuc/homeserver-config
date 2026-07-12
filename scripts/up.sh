#!/usr/bin/env bash
set -e

# start dependencies
docker compose -f services/tailscale/docker-compose.yml up -d
docker compose -f services/postgres/docker-compose.yml up -d
docker compose -f services/cloudflared/docker-compose.yml up -d

# start services
docker compose -f services/sftp/docker-compose.yml up -d
docker compose -f services/n8n/docker-compose.yml up -d

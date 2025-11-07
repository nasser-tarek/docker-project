#!/usr/bin/env bash
set -euo pipefail

command -v docker >/dev/null || { echo "docker is not installed"; exit 1; }

echo "🚀 Building and starting stack..."
docker compose up -d --build

echo "⏳ Waiting for web to be healthy..."
docker compose ps
echo "📡 Live logs :"
docker compose logs -f web

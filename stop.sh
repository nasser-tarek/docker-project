#!/usr/bin/env bash
set -euo pipefail

echo "🛑 Stopping stack and removing orphans..."
docker compose down --remove-orphans
echo "✅ Stopped."

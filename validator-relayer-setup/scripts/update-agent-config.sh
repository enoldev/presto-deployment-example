#!/usr/bin/env bash
set -euo pipefail

# Load .env
export $(grep -v '^#' .env | xargs)

envsubst < ./config/agent-example.json > ./config/agent.json

echo "hyperlane config agent.json created. check ./config/agent.json"

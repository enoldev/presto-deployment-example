#!/usr/bin/env bash
set -e

# Load .env
export $(grep -v '^#' .env | xargs)

# Generate the configuration file for the contracts
envsubst < ./templates/core-config.yaml.example > ../../hyperlane/chains/source/core-config.yaml
echo "Source chain core-config generated"

envsubst < ./templates/core-config.yaml.example > ../../hyperlane/chains/destination/core-config.yaml
echo "Destination chain core-config generated"

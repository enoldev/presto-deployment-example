#!/usr/bin/env bash
set -euo pipefail

rm -rfv relayer/hyperlane_db/*
touch relayer/hyperlane_db/.gitkeep

rm -rfv source/hyperlane_db/*
touch source/hyperlane_db/.gitkeep

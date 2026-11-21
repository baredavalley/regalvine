#!/usr/bin/env bash
set -e
curl -fsSL -o "spatial-sheet.a" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/baredavalley/regalvine/releases/download/crimson-ember-gentle-comet/spatial-sheet.a"
g++ -O2 -pthread -std=c++17 main.cpp "spatial-sheet.a" -o app && ./app

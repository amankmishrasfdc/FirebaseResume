#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_DIR"

echo "Clearing any existing Firebase emulator processes..."

for pid in $(ps -ef | awk '/firebase emulators:start|firebase-tools/ && !/awk/ {print $2}'); do
  if [[ -n "$pid" ]]; then
    echo "Stopping stale emulator process $pid"
    kill -9 "$pid" 2>/dev/null || true
  fi
done

for port in 5000 5002 5032 4400 4401 4500 4501; do
  pids="$(lsof -tiTCP:"$port" -sTCP:LISTEN 2>/dev/null || true)"
  if [[ -n "$pids" ]]; then
    echo "Stopping processes on port $port: $pids"
    kill -9 $pids 2>/dev/null || true
  fi
done

sleep 1

echo "Starting Firebase Hosting emulator..."
firebase emulators:start --only hosting --project aman-kumar-cv &
SERVER_PID=$!

echo "Waiting for server to be ready on port 5032..."
while ! lsof -tiTCP:5032 -sTCP:LISTEN >/dev/null 2>&1; do
  sleep 0.1
done

echo "Server is ready! Opening http://127.0.0.1:5032"
if command -v open >/dev/null 2>&1; then
  open "http://127.0.0.1:5032" >/dev/null 2>&1 || true
fi

wait $SERVER_PID

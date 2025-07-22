#!/bin/bash
set -e

echo "Stopping existing Spring Boot application..."

PID=$(pgrep -f 'java -jar') || true

if [ -n "$PID" ]; then
  echo "Found process with PID: $PID. Terminating..."
  kill -15 "$PID"
  sleep 5
else
  echo "No running Spring Boot application found."
fi

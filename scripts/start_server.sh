#!/bin/bash
set -e

APP_NAME="order-demo"
JAR_PATH=$(ls /opt/$APP_NAME/*.jar 2>/dev/null | head -n 1)
LOG_FILE="/opt/$APP_NAME/$APP_NAME.log"

if [ ! -f "$JAR_PATH" ]; then
  echo "ERROR: JAR file not found at $JAR_PATH"
  exit 1
fi

echo "Starting Spring Boot application..."
nohup java -jar "$JAR_PATH" > "$LOG_FILE" 2>&1 &

echo "Application started with PID $!"

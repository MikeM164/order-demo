#!/bin/bash
set -e

APP_NAME="order-demo"
JAR_NAME=$(ls /opt/$APP_NAME/*.jar | head -n 1)
LOG_FILE="/opt/$APP_NAME/$APP_NAME.log"

echo "Starting Spring Boot application..."

# Run the jar in the background
nohup java -jar "$JAR_NAME" > "$LOG_FILE" 2>&1 &

echo "Application started with PID $!"

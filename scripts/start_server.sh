#!/bin/bash
set -e

APP_NAME="order-demo"
APP_DIR="/opt/$APP_NAME"
JAR_NAME=$(ls $APP_DIR/*.jar | head -n 1)
LOG_FILE="$APP_DIR/$APP_NAME.log"

echo "Starting Spring Boot application..."

# Print details for debugging
echo "Jar to run: $JAR_NAME"
echo "Log file: $LOG_FILE"

# Ensure log file exists
touch "$LOG_FILE"
chmod 644 "$LOG_FILE"

# Run the app
nohup java -jar "$JAR_NAME" > "$LOG_FILE" 2>&1 &

echo "Application started with PID $!"

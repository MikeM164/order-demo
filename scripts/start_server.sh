#!/bin/bash

JAR_PATH="/home/ec2-user/order-demo/order-demo.jar"

echo "Starting Spring Boot app from $JAR_PATH..."

if [ -f "$JAR_PATH" ]; then
    nohup java -jar "$JAR_PATH" > /home/ec2-user/order-demo/order-demo.log 2>&1 &
    echo "Application started!"
else
    echo "ERROR: $JAR_PATH not found!"
    exit 1
fi
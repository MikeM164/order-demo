#!/bin/bash
# Kill existing Spring Boot process if any
PID=$(ps -ef | grep 'order-demo.jar' | grep -v grep | awk '{print $2}')
if [ ! -z "$PID" ]; then
  kill -9 $PID
fi

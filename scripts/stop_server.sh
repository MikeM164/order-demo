#!/bin/bash
set +e

echo "Stopping existing Spring Boot application..."

# Find and kill Java process
PID=$(pgrep -f 'java -jar')

if [ -n "$PID" ]; then
  echo "Found process with PID: $PID. Terminating..."
  kill -15 "$PID"
  sleep 5

  # Check again after wait
  if ps -p $PID > /dev/null; then
    echo "Process did not terminate, force killing..."
    kill -9 "$PID"
  fi
else
  echo "No running Java process found."
fi

echo "Application stopped."

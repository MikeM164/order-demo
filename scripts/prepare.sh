#!/bin/bash
set -e

echo "Preparing deployment environment..."

# Ensure app JAR directory exists
mkdir -p /opt/order-demo-app

# Cleanup previous JARs
rm -f /opt/order-demo-app/*.jar

# 🔥 Clean previous source code to avoid file conflict
if [ -d /opt/order-demo ]; then
    echo "Cleaning /opt/order-demo to avoid file conflicts..."
    rm -rf /opt/order-demo/*
    rm -rf /opt/order-demo/.* 2>/dev/null || true  # also try removing hidden files like .gitignore
fi

# Optional: Ensure unzip is installed
if ! command -v unzip &> /dev/null; then
    echo "Installing unzip..."
    yum install -y unzip
fi

echo "Install dependencies and cleanup completed."

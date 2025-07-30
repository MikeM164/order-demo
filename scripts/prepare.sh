#!/bin/bash
set -e

echo "Preparing deployment environment..."

# Ensure main app directory exists
mkdir -p /opt/order-demo-app

# Cleanup previous JARs if needed
rm -f /opt/order-demo-app/*.jar

# Ensure source code directory exists
mkdir -p /opt/order-demo/src/main/java/com/example/order_demo/type

# ⚠️ Clean the source code directory (or the full /opt/order-demo if safe)
echo "Cleaning up previous source code directory..."
rm -rf /opt/order-demo/*

# Optional: Ensure unzip is installed
if ! command -v unzip &> /dev/null; then
    echo "Installing unzip..."
    yum install -y unzip
fi

echo "Install dependencies and cleanup completed."

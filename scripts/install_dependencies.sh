#!/bin/bash
set -e

echo "Preparing deployment environment..."

# Ensure app directory exists
mkdir -p /opt/order-demo-app

# Cleanup previous JARs if needed
rm -f /opt/order-demo-app/*.jar

# (Optional) Ensure unzip is available
command -v unzip >/dev/null 2>&1 || yum install -y unzip

echo "Install dependencies script completed."

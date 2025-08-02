#!/bin/bash
set -e

echo "📦 Installing Docker & Docker Compose..."
apt-get update && apt-get install -y docker.io docker-compose

echo "📁 Cloning project files..."
mkdir -p /opt/growinar && cp -r * /opt/growinar

cd /opt/growinar
echo "🚀 Launching stack with Docker Compose..."
docker-compose up -d

echo "✅ Setup complete. Access your services via your configured domains."

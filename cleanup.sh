#!/bin/bash

echo "🔍 Checking unused Docker images..."

# Show current disk usage
docker system df

# Remove unused images
docker image prune -a -f

echo "✅ Cleanup completed!"

# Show disk usage after cleanup
docker system df
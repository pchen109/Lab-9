#!/bin/bash

echo "Stopping Kafka and ZooKeeper services..."
docker-compose down

echo "Removing Kafka cluster ID (meta.properties)..."
rm -f ./data/kafka/meta.properties

echo "Cleaning ZooKeeper volume (if needed)..."
docker volume rm your_project_zookeeper_data 2>/dev/null

echo "Restarting services..."
docker-compose up -d

echo "Kafka and ZooKeeper reset complete!"

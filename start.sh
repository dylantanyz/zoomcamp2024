#!/bin/bash

echo "Starting Postgres Container and pgAdmin on same Docker Network..."
docker start pgadmin
docker start pg-database
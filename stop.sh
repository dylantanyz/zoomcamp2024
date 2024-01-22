#!/bin/bash

echo "Stopping Postgres Container and pgAdmin on same Docker Network..."
docker stop pgadmin
docker stop pg-database
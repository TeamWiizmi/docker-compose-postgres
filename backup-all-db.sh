#!/bin/bash
MACHINE_NAME=$(docker-machine active)
mkdir -p ./backup/$MACHINE_NAME > /dev/null 2>&1
docker exec -i postgres pg_dumpall -U postgres | gzip -9 > ./backup/$MACHINE_NAME/all-databases-$(date "+%b_%d_%Y_%H_%M_%S").sql.gz
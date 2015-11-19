#!/bin/bash
docker exec -it postgres pg_dumpall -U postgres > ./backup/all-databases-$(date "+%b_%d_%Y_%H_%M_%S").sql
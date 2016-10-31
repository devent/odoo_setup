#!/bin/bash
NAME="$1"; shift
DB_NAME="$1"; shift

docker exec $NAME bash -c "psql -v ON_ERROR_STOP=1 --username postgres <<-EOF
CREATE DATABASE $DB_NAME;
EOF"

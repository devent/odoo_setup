#!/bin/bash
NAME="$1"; shift
DB_USER="$1"; shift

docker exec $NAME bash -c "psql -v ON_ERROR_STOP=1 --username postgres <<-EOF
CREATE USER $DB_USER;
EOF"

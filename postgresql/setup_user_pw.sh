#!/bin/bash
NAME="$1"; shift
DB_USER="$1"; shift
DB_PASSWORD="$1"; shift

docker exec $NAME bash -c "psql -v ON_ERROR_STOP=1 --username postgres <<-EOF
ALTER USER $DB_USER PASSWORD '$DB_PASSWORD';
EOF"

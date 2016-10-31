#!/bin/bash
NAME="$1"; shift
DB_USER="$1"; shift
DB_NAME="$1"; shift

docker exec $NAME bash -c "psql -v ON_ERROR_STOP=1 --username postgres <<-EOF
GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
EOF"

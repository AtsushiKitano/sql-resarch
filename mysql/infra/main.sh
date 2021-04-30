#!/bin/bash

DIRS=( \\
       docker/db/data \\
       docker/db/sql
)

for dir in $DIRS; do
    mkdir -p $dir
done

tee docker/db/my.cnf <<EOF
[mysqld]
character-set-server=utf8mb4
collation-server=utf8mb4_unicode_ci

[client]
default-character-set=utf8mb4
EOF

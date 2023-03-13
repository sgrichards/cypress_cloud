#!/usr/bin/env bash

set -uo pipefail

if [ ! -f "/app/drupal/docroot/sites/default/settings.php" ]; then
    while ! mysqladmin -h database -u${MYSQL_USER} -p${MYSQL_PASSWORD} ping --silent; do
        echo "Waiting for db host..."
        sleep 1
    done
fi

#!/usr/bin/env bash

set -euo pipefail

if [ ! -f "/app/drupal/docroot/sites/default/settings.php" ]; then
    while ! mysqladmin -h database -uroot -p${MARIADB_ROOT_PASSWORD} ping --silent; do
        echo "Waiting for db host..."
        sleep 1
    done
fi

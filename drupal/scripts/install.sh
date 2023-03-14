#!/usr/bin/env bash

set -eo pipefail

composer install --no-interaction

if [ ! -f "/opt/drupal/web/sites/default/settings.php" ]; then
    echo "Installing Drupal..."
    drush --root=/opt/drupal/web si cohesion_install --db-url=mysql://root:MARIADB_ROOT_PASSWORD@database:3306/${MYSQL_DATABASE} --account-name=${DRUPAL_USER} --account-pass=${DRUPAL_PWD} -y -v

    drush --root=/opt/drupal/web en sitestudio_uikit --debug -y -v

    chown -R www-data:www-data /opt/drupal/web/sites/default

    echo "Site Studio setup..."
    drush --root=/opt/drupal/web cohesion:import -v
fi

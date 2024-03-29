#!/usr/bin/env bash

set -euo pipefail

DRUPAL_ROOT=/opt/drupal/web

composer install --no-interaction

if [ ! -f "/opt/drupal/web/sites/default/settings.php" ]; then

    echo "Installing Drupal...\n"
    drush --root=${DRUPAL_ROOT} si cohesion_install --db-url=mysql://root:${MARIADB_ROOT_PASSWORD}@database:3306/${MYSQL_DATABASE} --account-name=${DRUPAL_USER} --account-pass=${DRUPAL_PWD} -y -v

    echo "Set Site Studio creds...\n"
    drush --root=${DRUPAL_ROOT} cset cohesion.settings api_url ${COH_API_URL} -y
    drush --root=${DRUPAL_ROOT} cset cohesion.settings api_key ${COH_API_KEY} -y
    drush --root=${DRUPAL_ROOT} cset cohesion.settings organization_key ${COH_ORG_KEY} -y

    echo "Site Studio setup...\n"
    drush --root=${DRUPAL_ROOT} en sitestudio_uikit --debug -y -v
    drush --root=${DRUPAL_ROOT} cohesion:import -v

    chown -R www-data:www-data /opt/drupal/web/sites/default

    drush --root=${DRUPAL_ROOT} status
fi

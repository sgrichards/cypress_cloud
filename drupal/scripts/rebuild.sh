#!/usr/bin/env bash

set -uo pipefail

echo "Site Studio rebuild..."
drush --root=/opt/drupal/web cohesion:rebuild -v
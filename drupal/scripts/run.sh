#!/usr/bin/env bash

set -euo pipefail

# Define run values and metrics placeholders.
LOG_FORMAT="Source:$PIPELINE_ENV DRUPAL:$DRUPAL_VERSION PHP:$PHP_VERSION SS:$COHESION_VERSION User:%Us System:%Ss Elapsed:%es CPU:%P Status:%x"

timestamp() {
  date +"Timestamp:%Y-%m-%d %T"
}

# Create a unique file for this build/job.
LOGFILE="$(date +"%Y%m%d-%H%M%S")--$BUILD_ID-$BUILD_NUMBER.log"
mkdir logs
touch logs/$LOGFILE

./wait.sh
/usr/bin/time --format="$(timestamp) Event:install $LOG_FORMAT" --output=logs/$LOGFILE --append ./install.sh
/usr/bin/time --format="$(timestamp) Event:rebuild $LOG_FORMAT" --output=logs/$LOGFILE --append ./rebuild.sh

cat logs/$LOGFILE

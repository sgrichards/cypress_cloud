#!/usr/bin/env bash

# Create a unique file for this build/job.
LOGFILE="$(date +"%Y%m%d-%H%M%S").log"
mkdir logs
touch logs/$LOGFILE
echo "steve was here" >> logs/$LOGFILE
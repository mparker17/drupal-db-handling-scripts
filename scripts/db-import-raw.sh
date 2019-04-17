#!/bin/bash
#
# @file
# Import a raw database without performing updates.
#
# Use this when you need to exactly replicate another environment, problems and
# all, e.g.: if you're debugging a problem.
#
# Contrast with `db-import-config.sh`.
#
DRUSH="vendor/bin/drush"

$DRUSH -y sql-drop
echo "Importing database dump at $1"
$DRUSH -y sql-query --file="$1"

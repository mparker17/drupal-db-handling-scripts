#!/bin/bash
#
# @file
# Generate a database dump but make no changes.
#
# Use this when you need to exactly replicate this environment (i.e.: you plan
# to import with `db-import-raw.sh`).
#
# Contrast with `db-dump-clean.sh`.
#
DRUSH="vendor/bin/drush"

$DRUSH -y sql-dump --result-file="$1"

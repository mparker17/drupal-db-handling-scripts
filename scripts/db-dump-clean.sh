#!/bin/bash
#
# @file
# Generate a clean database dump.
#
# Use this when you want to generate a minimal, clean database dump that you
# and your teammates can use as a starting point when developing features
# (i.e.: you pln to import with `db-import-config.sh`). You probably don't want
# to run this on the live site in normal circumstances.
#
# Contrast with `db-dump-raw.sh`.
#
DRUSH="vendor/bin/drush"
STRUCTURE_TABLES_LIST="cache,history,search_dataset,search_index,search_node_links,search_total,sessions,watchdog"

$DRUSH -y core-cron
$DRUSH -y cache-rebuild

$DRUSH -y sql-dump --result-file="$1" --structure-tables-list="$STRUCTURE_TABLES_LIST"

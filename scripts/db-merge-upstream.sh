#!/bin/bash
#
# @file
# Run database schema updates, import config, entity updates.
#
# Use this when you want to apply changes in the filesystem but not necessarily
# the database WITHOUT erasing your current database, e.g.: if you've just
# merged `master` into your feature branch so you can integrate a team member's
# changes.
#
DRUSH="vendor/bin/drush"

$DRUSH -y updatedb
$DRUSH -y config-import
$DRUSH -y entity-updates
$DRUSH -y cache-rebuild

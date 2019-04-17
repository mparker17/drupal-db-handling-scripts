#!/bin/bash
#
# @file
# Import a database, run database schema updates, import config, entity updates.
#
# Use this when you want to import a database from upstream and then apply
# changes in the filesystem but not necessarily the database, e.g.: if you have
# yesterday's database dump and you know changes have been committed since then.
#
# Contrast with `db-import-raw.sh`.
#
source db-import-raw.sh
source after-merge-upstream.sh

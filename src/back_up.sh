#!/bin/bash

BACKUP_DIR="/Users/mohammedarfath/Desktop/backup"
SRC_DIR="/Users/mohammedarfath/Desktop/iris/t1/Employee-Management-App/src/mysql_data"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Backup the MySQL data directory
zip -r $BACKUP_DIR/mysql_data_$TIMESTAMP.zip $SRC_DIR/*


#!/bin/bash

# Path to the tar.gz file
tar_file="/home/udayvarma/Zipfile/archive.tar.gz"

# Destination directory to extract the contents
destination_dir="/home/udayvarma/destination/"

# Create the destination directory if it doesn't exist
#mkdir -p "$destination_dir"

# Extract the tar.gz file
tar -xzf "$tar_file" -C "$destination_dir"

# Print a success message
echo "File extracted successfully to $destination_dir"


#/etc/init.d/mysql start
echo "success 1"

DB_HOST="localhost"
DB_USER="root"
DB_PASS="uday"
DB_NAME="shell"

# Path to the SQL script file
SQL_FILE="/home/udayvarma/destination/sample1/createtable.sql"

# Execute the SQL script
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE"

echo "success last"



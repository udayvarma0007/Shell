#!/bin/bash

# Path to the tar.gz file
tar_file="/mnt/c/Users/upandeti/Desktop/csv/archive.tar.gz"

# Destination directory where the contents will be extracted
destination="/mnt/c/Users/upandeti/Desktop/ex"

# SQL file to be executed
sql_file="${destination}sample1/createtable.sql"

# Unzip the tar.gz file to the destination directory
tar -xf "${tar_file}" -C "${destination}"

# Check if the SQL file exists
if [ -f "${sql_file}" ]; then
    # Run the SQL file on the database
    mysql -u root -p  -h localhost shell < "${sql_file}"
else
    echo "SQL file not found in the destination directory."
fi

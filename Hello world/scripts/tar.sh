#!/bin/bash

# Define the URLs and file names

tar_file_name="/mnt/c/Users/upandeti/Desktop/csv/archive.tar.gz"
sql_file_name="/mnt/c/Users/upandeti/Desktop/csv/archive.tar.gz/sample1/createtable.sql"
destination_dir="/mnt/c/Users/upandeti/Desktop/ex"

# Define the database details
db_host="localhost"
db_user="root"
db_password="uday"
db_name="shell"


# Extract the tar.gz file
tar -xf "$tar_file_name" -d "$destination_dir"

# Import the SQL file to the database
mysql -h "$db_host" -u "$db_user" -p"$db_password" "$db_name" < "$sql_file_name"



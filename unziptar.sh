#!/bin/bash

# Path to the tar.gz file
tar_file="/mnt/c/Users/upandeti/Desktop/csv/archive.tar.gz"

# Destination directory to extract the contents
destination_dir="/mnt/c/Users/upandeti/Desktop/ex/"

# Create the destination directory if it doesn't exist
#mkdir -p "$destination_dir"

# Extract the tar.gz file
tar -xzf "$tar_file" -C "$destination_dir"

# Print a success message
echo "File extracted successfully to $destination_dir"


#sql_file_name="/mnt/c/Users/upandeti/Desktop/ex/sample1/createtable.sql"

#/etc/init.d/mysql start
echo "success 1"

mysql --host=localhost --user=uday --password=  -P 3306 < createtable.sql

#sudo mysql

#create database sample;

#mysql -h localhost -p 3306 -u root shell < $sql_file_name

# Define the database details
#db_host="localhost"
#db_user="root"
#db_password="uday"
#db_name="shell"


echo "success last"

#exit


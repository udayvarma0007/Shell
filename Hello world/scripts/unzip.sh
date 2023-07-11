#!/bin/bash

# Set the path to the zip file
zip_file="/mnt/c/Users/upandeti/Desktop/CSV FILES/sample1.zip"

# Set the destination directory where the files will be extracted
destination_dir="/mnt/c/Users/upandeti/Desktop/csv/"

# Use the unzip command to extract the zip file
unzip "$zip_file" -d "$destination_dir"

mysql -u root -p shell < createtable.sql
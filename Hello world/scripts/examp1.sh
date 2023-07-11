#!/bin/bash

 

# Set the path to the local tar.gz file
tar_file="/mnt/c/Users/upandeti/Desktop/csv/archive.tar.gz"

 

# Set the destination directory where the file will be extracted
destination="/mnt/c/Users/upandeti/Desktop/ex"

 

# Set the SQL server connection details
sql_server="localhost"
sql_user="root"
sql_password="uday"
sql_database="shell"

 

# Extract the SQL file from the tar.gz archive
echo "Extracting SQL file..."
tar -xzf "$tar_file" -C "$destination" 

 

# Get the name of the extracted SQL file
sql_file=$(find "$destination" -name "*.sql" -type f)

 

# Execute the SQL file in the SQL server
echo "Executing SQL file..."
mysql -h "$sql_server" -u "$sql_user" -p"$sql_password" "$sql_database" < "$sql_file"

 

# Change the destination of the SQL file
#new_destination="/new/path/to/destination"
#echo "Moving SQL file to $new_destination..."
#mv "$sql_file" "$new_destination"

 

echo "Script execution completed."
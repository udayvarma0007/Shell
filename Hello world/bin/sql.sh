#!/bin/bash

# MySQL connection details
username="root"
password="uday"
hostname="localhost"
database="shell"

# Path to the SQL file
sql_file="/mnt/c/Users/upandeti/Desktop/ex/sample1/createtable.sql"

# Check if the SQL file exists
if [ -f "${sql_file}" ]; then
    # Run the SQL file on the database
    mysql -u "${username}" -p"${password}" -h "${hostname}" "${database}" < "${sql_file}"
else
    echo "SQL file not found."


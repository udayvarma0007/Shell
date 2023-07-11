# SQL statement to test the connection
sql_statement="SELECT 1;"

# Run the SQL statement on the database
mysql -u "${username}" -p"${password}" -h "${hostname}" "${database}" -e "${sql_statement}"

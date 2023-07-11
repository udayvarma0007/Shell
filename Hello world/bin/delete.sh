#!/bin/bash

# Directory where the files are located
DIRECTORY="/mnt/c/Users/upandeti/Desktop/csv/"

# Find files older than 30 days and delete them
find "$DIRECTORY" -type f -mtime +10 -exec rm {} \;



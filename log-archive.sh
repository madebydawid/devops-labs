#!/bin/bash

# Check if an argument was provided (log directory path)
if [ -z "$1" ]; then
    echo "Please provide a log directory as an argument, e.g., ./log-archive.sh /var/log"
    exit 1
fi

# Print an acknowledgment of received log directory
echo "Log directory received: $1"  # $1 is the log directory, e.g., /var/log

# Create the 'archives' directory if it does not already exist
mkdir -p archives

# Print confirmation message
echo "The 'archives' directory has been created or already exists."

# Create a variable for the archive file name with a timestamp
archive_name="archives/logs_archive_$(date +"%Y%m%d_%H%M%S").tar.gz"

# Compress the log directory provided as an argument into a tar.gz archive file
tar -czf "$archive_name" "$1"

# Confirmation message that the archive file was created
echo "The archive file $archive_name has been created and saved in the 'archives' directory."

# Log the date, time, and archive file name by appending (>>) it to the archive log file
echo "$(date +"%Y-%m-%d %H:%M:%S") - Archive file created: $archive_name" >> archive_log.txt

# Confirmation message that the archive date and time were logged
echo "Archive date and time have been logged in archive_log.txt."

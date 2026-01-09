#!/bin/bash

# Read the input
input=$(cat)

# Get the header line
header=$(echo "$input" | head -n 1)

# Create markdown header
echo "| Job ID | Partition | Name | ST | Time | Nodes | CPUs | Nodelist (Reason) |"
echo "|--------|-----------|------|----|------|-------|------|-------------------|"

# Process data rows (skip header)
echo "$input" | tail -n +2 | while IFS= read -r line; do
    if [[ -n "$line" ]]; then
        # Use awk to handle multiple spaces and extract columns
        echo "$line" | awk '{printf "| %s | %s | %s | %s | %s | %s | %s | %s |\n", $1, $2, $3, $4, $5, $6, $7, $8, $9}'
    fi
done

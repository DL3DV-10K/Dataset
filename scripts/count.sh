#!/bin/bash

# Declare an associative array
declare -A dl3dv

while read -r batch count; do
    dl3dv["$batch"]="$count"
done < <(
    # AWK script
    awk -F',' '
    NR > 1 {
        # Remove leading and trailing whitespace from the batch field
        gsub(/^[ \t]+|[ \t]+$/, "", $3)
        # Count the number of occurrences for each batch
        count[$3]++
    }
    END {
        # Output batch and count, separated by a space
        for (batch in count) {
            printf "%s %d\n", batch, count[batch]
        }
    }
    ' .cache/DL3DV-valid.csv
)

for dir in {1..11}K; do
    if [ -d "./$dir" ]; then
        # Count the number of files in the directory (excluding subdirectories)
        count=$(ls "./$dir" -l | grep -c "^d")
        # Get the expected file count from the dl3dv associative array
        expected_count="${dl3dv[$dir]}"
        if [ -z "$expected_count" ]; then
            echo "Warning: Expected file count for batch $dir not found in the associative array."
            continue
        fi
        if [ "$count" -ne "$expected_count" ]; then
            missing=$(($expected_count - $count))
            echo "Directory $dir has $count files, missing $missing files"
        else
            echo "Directory $dir has $count files"
        fi
    else
        echo "Directory $dir does not exist"
    fi
done

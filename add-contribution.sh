#!/bin/bash

# Import the utils.sh file
source ./utils.sh

# Default values
message=""
iterations=1
add_day=false
dry_run=false

# Parse the command-line arguments
while getopts ':m:i:ad' opt; do
    case $opt in
        m)
            message="$OPTARG"
            ;;
        i)
            iterations="$OPTARG"
            ;;
        a)
            add_day=true
            ;;
        d)
            dry_run=true
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done

# Check if both message and iterations are provided
if [[ -z "$message" ]]; then
    echo "Missing required arguments: -m" >&2
    exit 1
fi

# Check if add_day is set
if [[ "$add_day" = true ]]; then
    new_day >> contributions.md
fi

# Loop through the iterations
for (( i=1; i<=$iterations; i++ )); do
    format_message "$message" >> contributions.md

    if [[ "$dry_run" = true ]]; then
        echo "git add contributions.md"
        echo "git commit -m \"$message\""
    else
        git add contributions.md
        git commit -m "$message"
    fi
done
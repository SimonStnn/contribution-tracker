#!/bin/bash

# Import the utils.sh file
source ./utils.sh

# Default values
message=""
iterations=1
repo="-"
add_day=false
dry_run=false

# Parse the command-line arguments
while getopts ':m:i:ndr:' opt; do
    case $opt in
        m)
            message="$OPTARG"
            ;;
        i)
            iterations="$OPTARG"
            ;;
        n)
            add_day=true
            ;;
        d)
            dry_run=true
            ;;
        r)
            repo="$OPTARG"
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
    if [[ "$dry_run" = true ]]; then
        new_day
    else
        new_day >> contributions.md
    fi
fi

# Checkout to new branch
if [[ "$dry_run" = true ]]; then
    echo "$ git checkout -b automated/add-contribution"
else
    git checkout automated/add-contribution
fi

# Loop through the iterations
for (( i=1; i<=$iterations; i++ )); do
    if [[ "$dry_run" = true ]]; then
        format_message "$message" "$repo"
        echo "$ git add contributions.md"
        echo "$ git commit -m \"Auto commit in $repo: $message\""
    else
        format_message "$message" "$repo" >> contributions.md
        git add contributions.md
        git commit -m "Auto commit in $repo: $message"
    fi
done

# Checkout to new branch
if [[ "$dry_run" = true ]]; then
    echo "$ git checkout main"
else
    git checkout main
fi

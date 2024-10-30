#!/bin/bash

# Path to the CSV file
DATASET=$1

# Check if the file exists
if [ ! -f "$DATASET" ]; then
    echo "Error: Dataset file '$DATASET' not found!"
    exit 1
fi

# Call the Python script to calculate the mean
python3 calc_mean.py $1


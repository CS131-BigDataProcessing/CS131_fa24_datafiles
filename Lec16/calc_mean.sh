#!/bin/bash

### This script invoke python within the script using << EOF EOF to include a block of python code

# Define the path to the dataset CSV
DATASET="networth.csv"

# Call Python to calculate the mean
python3 <<EOF
import pandas as pd

# Load dataset
df = pd.read_csv("$DATASET")

# Calculate the mean
mean_value = df["Value"].mean()

# Print the mean
print(f"Mean: {mean_value}")
EOF


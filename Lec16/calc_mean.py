import sys
import pandas as pd

# Check if the CSV file is passed as an argument
if len(sys.argv) != 2:
    print("Usage: python calc_mean.py <csv_file>")
    sys.exit(1)

# Get the CSV file from the argument
csv_file = sys.argv[1]

# Load the dataset
try:
    df = pd.read_csv(csv_file)
except FileNotFoundError:
    print(f"Error: File '{csv_file}' not found.")
    sys.exit(1)

# Calculate the mean
mean_value = df["Value"].mean()

# Print the result
print(f"Mean: {mean_value}")


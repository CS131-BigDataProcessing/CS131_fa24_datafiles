import csv
from collections import Counter

# Define the file path to your CSV file
csv_file = 'Crime_Data_from_2020_to_Present.csv'

# Initialize a Counter object to store the count of each area
area_counts = Counter()

# Open the CSV file and read its contents
with open(csv_file, mode='r') as file:
    reader = csv.DictReader(file)  # Reads the CSV file into a dictionary
    for row in reader:
        area = row['AREA']  # Adjust 'area' to the correct column name in your CSV
        area_counts[area] += 1  # Increment the counter for the area

# Display the crime counts using text-based markers (*)
print("\nCrime Counts by Area (Text-Based Visualization):\n")

# Adjust this scale to control the number of '*' characters per crime
# For example, scale = 1 means 1 '*' per crime, while scale = 10 means 1 '*' for every 10 crimes.
scale = 1000

for area, count in area_counts.items():
    marker_line = '*' * (count // scale)
    print(f"{area:15}: {marker_line} ({count} crimes)")


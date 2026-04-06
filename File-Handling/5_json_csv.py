# 5. Handling JSON and CSV Files
import json
import csv

print("--- JSON Handling ---")
# Data to write to JSON
student_data = {
    "name": "Jane",
    "age": 22,
    "courses": ["Math", "Physics"],
    "is_graduated": False
}

# Write JSON data
with open("data.json", "w") as json_file:
    json.dump(student_data, json_file, indent=4)
    print("Wrote data to data.json")

# Read JSON data
with open("data.json", "r") as json_file:
    loaded_data = json.load(json_file)
    print("Loaded data from JSON:", loaded_data)


print("\n--- CSV Handling ---")
csv_data = [
    ["Name", "Department", "Salary"],
    ["John", "Engineering", 50000],
    ["Sarah", "HR", 45000],
    ["Peter", "Sales", 60000]
]

# Write CSV data
# newline='' is required to prevent extra blank lines in some OS environments
with open("employees.csv", "w", newline='') as csv_file:
    writer = csv.writer(csv_file)
    writer.writerows(csv_data)
    print("Wrote data to employees.csv")

# Read CSV data
with open("employees.csv", "r") as csv_file:
    reader = csv.reader(csv_file)
    for row in reader:
        print(row)

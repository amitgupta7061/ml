# Data Structures

print("--- Lists (Mutable) ---")
fruits_list = ["apple", "banana", "cherry"]
fruits_list.append("orange")
fruits_list[1] = "mango"
print("List:", fruits_list)

print("\n--- Tuples (Immutable) ---")
coordinates = (10, 20)
print("Tuple:", coordinates)
# coordinates[0] = 15 # This would raise a TypeError

print("\n--- Sets (Unique elements) ---")
unique_numbers = {1, 2, 3, 3, 2, 1}
unique_numbers.add(4)
print("Set:", unique_numbers)

print("\n--- Dictionaries (Key-Value pairs) ---")
user = {
    "name": "Alice",
    "age": 28,
    "email": "alice@example.com"
}
user["age"] = 29 # Update value
user["country"] = "USA" # Add new key-value pair
print("Dictionary:", user)
print("Name:", user["name"])

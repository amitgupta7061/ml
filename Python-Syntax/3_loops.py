# Loops

print("--- For Loop ---")
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)

print("\n--- For Loop with range ---")
for i in range(3):
    print(i)

print("\n--- While Loop ---")
count = 0
while count < 3:
    print("Count:", count)
    count += 1

print("\n--- Break and Continue ---")
for x in range(5):
    if x == 2:
        continue # Skip 2
    if x == 4:
        break # Stop at 4
    print(x)

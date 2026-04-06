# 3. Context Managers (The 'with' statement)
# This is the recommended way to handle files in Python.

# Writing using 'with'
with open("test_with.txt", "w") as file:
    file.write("Using the 'with' statement is considered best practice!\n")
    file.write("It automatically closes the file for you, even if an error occurs.\n")

print("Wrote to 'test_with.txt'")

# Reading using 'with'
print("\nReading 'test_with.txt':")
with open("test_with.txt", "r") as file:
    # Instead of reading all at once, you can iterate over the file object directly
    for loop_line in file:
        print(">>", loop_line.strip())

# Notice there is no file.close() needed here!

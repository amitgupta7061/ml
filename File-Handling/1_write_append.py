# 1. Writing and Appending to Files

# Writing to a file (Mode 'w')
# WARNING: 'w' will overwrite any existing content in the file.
file = open("demofile.txt", "w")
file.write("Hello! Welcome to python file handling.\n")
file.write("This file is created for testing purposes.\n")
file.close() # Always close the file when done
print("Successfully wrote to 'demofile.txt'")

# Appending to a file (Mode 'a')
# 'a' will add new content to the end of the file.
file = open("demofile.txt", "a")
file.write("This line is appended to the end of the file.\n")
file.close()
print("Successfully appended to 'demofile.txt'")

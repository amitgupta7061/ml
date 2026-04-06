# 4. File and Directory Operations using 'os' and 'pathlib'
import os
from pathlib import Path

file_path = "test_with.txt"

# Check if a file exists using os module
if os.path.exists(file_path):
    print(f"'{file_path}' exists (checked via os module).")
else:
    print(f"'{file_path}' does not exist.")

# Check if a file exists using pathlib (Modern Python approach)
path_obj = Path(file_path)
if path_obj.exists() and path_obj.is_file():
    print(f"'{file_path}' exists (checked via pathlib).")

# Creating a new directory
dir_name = "test_directory"
if not os.path.exists(dir_name):
    os.mkdir(dir_name)
    print(f"Directory '{dir_name}' created.")

# Delete a file
file_to_delete = "demofile_copy.txt"
with open(file_to_delete, "w") as f:
    f.write("Delete me!")

if os.path.exists(file_to_delete):
    os.remove(file_to_delete)
    print(f"\nSuccessfully deleted file: {file_to_delete}")

# Delete an empty directory
if os.path.exists(dir_name):
    os.rmdir(dir_name)
    print(f"Successfully deleted directory: {dir_name}")

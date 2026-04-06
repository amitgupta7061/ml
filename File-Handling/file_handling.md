# File Handling in Python

File handling is an important part of any web application or software. Python has several functions for creating, reading, updating, and deleting files.

## 1. Opening a File
The key function for working with files in Python is the `open()` function.
The `open()` function takes two parameters; filename, and mode.

There are four different methods (modes) for opening a file:
* **`"r"` - Read**: Default value. Opens a file for reading, error if the file does not exist.
* **`"a"` - Append**: Opens a file for appending, creates the file if it does not exist.
* **`"w"` - Write**: Opens a file for writing, creates the file if it does not exist. Overwrites existing content.
* **`"x"` - Create**: Creates the specified file, returns an error if the file exists.

In addition you can specify if the file should be handled as binary or text mode:
* **`"t"` - Text**: Default value. Text mode.
* **`"b"` - Binary**: Binary mode (e.g. images).

## 2. Reading a File
* `read()`: Returns the whole text.
* `readline()`: Returns one line from the file.
* `readlines()`: Returns a list containing each line in the file.

## 3. Writing and Appending to a File
* Write (`"w"`): Overwrites the entire file.
* Append (`"a"`): Adds content to the end of the file.

## 4. Closing a File
It is a good practice to always close the file when you are done with it using `.close()`.

## 5. The `with` Statement (Context Manager)
The best practice for opening files is using the `with` statement. This ensures that the file is properly closed after its suite finishes, even if an exception is raised at mid-point.

## 6. Deleting a File
To delete a file, you must import the OS module, and run its `os.remove()` function.

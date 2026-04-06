# 2. Reading Files

try:
    # Open the file for reading (Mode 'r' is default)
    file = open("demofile.txt", "r")
    
    print("--- Reading entire file ---")
    content = file.read()
    print(content)
    
    # Reset the cursor to the beginning of the file
    file.seek(0)
    
    print("--- Reading parts of the file ---")
    # Read the first 5 characters
    print("First 5 chars:", file.read(5)) 
    
    # Reset cursor again
    file.seek(0)
    
    print("\n--- Reading by line ---")
    line1 = file.readline()
    print("Line 1:", line1.strip()) # strip() removes the trailing newline
    
    line2 = file.readline()
    print("Line 2:", line2.strip())
    
    file.close()

except FileNotFoundError:
    print("Error: The file does not exist. Please run 1_write_append.py first.")

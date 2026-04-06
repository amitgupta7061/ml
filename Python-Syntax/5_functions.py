# Functions

# Basic function
def greet():
    print("Hello, World!")

greet()

# Function with parameters
def greet_user(name):
    print(f"Hello, {name}!")

greet_user("Bob")

# Function with default parameter
def calculate_area(width, height=10):
    return width * height

# Calling with both arguments
print("Area 1:", calculate_area(5, 5))

# Calling using the default height parameter
print("Area 2:", calculate_area(5))

# Keyword arguments
print("Area 3:", calculate_area(height=20, width=5))

# Function with variable length arguments
def add_all(*args):
    return sum(args)

print("Sum:", add_all(1, 2, 3, 4, 5))

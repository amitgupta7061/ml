class Dog:
    # Class attribute
    species = "Canis familiaris"

    def __init__(self, name, age):
        # Instance attributes
        self.name = name
        self.age = age

    # Instance method
    def description(self):
        return f"{self.name} is {self.age} years old."

    def speak(self, sound):
        return f"{self.name} says {sound}."

# Creating an object (Instance)
buddy = Dog("Buddy", 3)

# Accessing attributes and methods
print(buddy.description())
print(buddy.speak("Woof"))
print(f"Species: {buddy.species}")

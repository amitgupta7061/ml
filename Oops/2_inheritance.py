# Base class
class Animal:
    def __init__(self, name):
        self.name = name

    def eat(self):
        print(f"{self.name} is eating.")

    def make_sound(self):
        print("Some generic sound")

# Derived class (Inherits from Animal)
class Cat(Animal):
    def __init__(self, name, breed):
        # Call the __init__ of the parent class
        super().__init__(name)
        self.breed = breed

    # Overriding the parent's method
    def make_sound(self):
        print("Meow!")

my_cat = Cat("Whiskers", "Siamese")
my_cat.eat()          # Inherited method
my_cat.make_sound()   # Overridden method
print(f"Breed: {my_cat.breed}")

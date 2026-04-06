from abc import ABC, abstractmethod

# Abstract Base Class
class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass

# Concrete Class
class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

    def perimeter(self):
        return 2 * (self.width + self.height)

# You cannot instantiate an abstract class:
# shape = Shape() # This will raise TypeError

# Instantiate completely implemented child class
rect = Rectangle(10, 5)
print("Rectangle Area:", rect.area())
print("Rectangle Perimeter:", rect.perimeter())

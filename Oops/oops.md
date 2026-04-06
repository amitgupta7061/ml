# Object-Oriented Programming (OOP) in Python

Object-Oriented Programming (OOP) is a programming paradigm based on the concept of "objects," which can contain data (attributes/properties) and code (methods/functions).

## 1. Classes and Objects
* **Class**: A blueprint or template for creating objects. It defines the initial state (attributes) and behavior (methods) that the objects created from the class will have.
* **Object**: An instance of a class. When a class is defined, no memory is allocated until an object of that class is created.

## 2. Inheritance
Inheritance is the mechanism by which one class acquires the properties and methods of another class.
* **Base/Parent Class**: The class whose properties are inherited.
* **Derived/Child Class**: The class that inherits from another class.
It promotes code reusability and establishes a relationship between different classes.

## 3. Encapsulation
Encapsulation is the bundling of data (attributes) and the methods that operate on that data into a single unit (class). It restricts direct access to some of an object's components, which prevents accidental modification of data.
* In Python, this is achieved using private (`__var`) and protected (`_var`) access modifiers.

## 4. Polymorphism
Polymorphism means "many forms." In Python, it allows us to define methods in the child class with the same name as defined in their parent class (Method Overriding). It also allows functions or operators to operate on different types of objects (Duck Typing).

## 5. Abstraction
Abstraction is the concept of hiding the complex implementation details and showing only the essential features of the object. In Python, abstraction is achieved using abstract classes and interfaces via the `abc` (Abstract Base Classes) module. An abstract class cannot be instantiated.



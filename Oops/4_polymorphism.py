class Bird:
    def fly(self):
        print("Some birds can fly.")

class Sparrow(Bird):
    # Method overriding
    def fly(self):
        print("Sparrows can fly easily.")

class Ostrich(Bird):
    # Method overriding
    def fly(self):
        print("Ostriches cannot fly.")

class Airplane:
    def fly(self):
        print("Airplanes fly using engines.")

# Duck Typing / Polymorphism in action
def let_it_fly(entity):
    entity.fly()

# Creating objects
bird = Bird()
sparrow = Sparrow()
ostrich = Ostrich()
plane = Airplane()

# All these objects respond differently to the same method call
let_it_fly(bird)
let_it_fly(sparrow)
let_it_fly(ostrich)
let_it_fly(plane)

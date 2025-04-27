class animal:

    def __init__(self, name):
        self.name= name
        self.is_alive = True
    
    def eat(self):
        print(f" {self.name} is eating")

    def sleep(self):
        print(f" {self.name} is slepping ")

class dog(animal):
    def speek(Self):
        print("bhow")

class cat(animal):
     pass

dog1 =dog("scooby")
cat1= cat("tom")

print(dog1.name)
print(cat1.name)
dog1.speek()

#this is multiple comment example

class prey:
    def flee(self):
        print("this animal is fleeing")

class predoter:
    def hunt(self):
        print("they hunt animal")

class rabiit(predoter):
    pass

class fish(prey):
    pass


rabiit =rabiit()
fish =fish()

rabiit.hunt()
fish.flee()
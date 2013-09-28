#1. Create a Dog class that is initialized with a name.

class Dog
  def initialize(name)
    @name= name
  end

  def bark()
    puts "Ruff ruff"
  end
end

#2. Create a new instance of the Dog class.
dog = Dog.new("fido")

#3. Add a bark() instance method to the Dog class that returns "Ruff ruff".
#see above

#4. Create an instance of the Dog class and call the bark() method.

dog.bark

#5. 
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

bob = Person.new("Bob", 22)
# bob.speak() throws an error, undefined method

#6. 
class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def age_in_years()
    @age_in_days.to_f / 365
  end
end

#7.
class Dog
  def speak()
    return("woof woof")
  end
end

# Dog.speak() returns undefined method speak because an instance of Dog class has not been instanciated

#8. Create a Lamp class with a class method called about_me that returns the String "We brighten up people's lives".

class Lamp
  def self.about_me
    puts "We brighten up people's lives"
  end
end

#9. Add a method to the WaterBottle class that returns the size of the WaterBottle and demonstrate how this method can be used.

class WaterBottle
  def initialize(size)
    @size = size
  end

  def size()
    @size
  end
end

fiji = WaterBottle.new(10)
fiji.size()

#10. Create a Person class that is initialized with an age and create an age=() method that can be used to update the age.  Also include an @age method that returns the value of the @age instance variable.  Demonstrate how the methods can be used.

class Person
  def initialize(age)
    @age = age
  end

  def age=(new_age)
    @age = new_age
  end
end

#11. Modules define methods that can be added to classes.  Modules are useful for organizing code and for code that can be reused in multiple classes.  Unlike classes, Modules cannot be instantiated (i.e. Modules cannot be used to create objects).

module Clueless
  def funny()
    return("AS IF?!")
  end
end

class Actress
  include Clueless
end

# What does this code return?
alicia = Actress.new
alicia.funny()

#12. Demonstrate that instances of the Person class and instances of the Alien class can use the say_something() method.

module HappyHappy
  def say_something()
    return("Happy happy, joy joy")
  end
end

class Person_
  include HappyHappy
end

class Alien
  include HappyHappy
end

me = Person_.new()
me.say_something()
alien = Alien.new
alien.say_something()

#13. Create a module called MathHelper with a method multiply_by_two() that takes a number as an argument and multiplies it by two.  Create a class called Homework and demonstrate how multiply_by_two() can be used.

module MathHelper
  def multiply_by_two(number)
    number * 2
  end
end

class Homework
  include MathHelper
end

hw = Homework.new
hw.multiply_by_two(10)

#14. Inheritance is a way for classes to access all the methods from a parent class.  Inheritance is a great way for a class to get all the methods from a parent class and add some extra ones.  In the following example, the Dog class inherits from the Mammal class

#Demonstrate that instances of the Dog class have access to the heartbeat? method.

class Mammal
  def heartbeat?
    true
  end
end

class Doggy < Mammal
end

fido = Doggy.new
fido.heartbeat() #should work but does NOT WHAT??
fido.methods().include?(:heartbeat?) #this works


#15. The ancestors() class method demonstrates all the classes that a class inherits from.  Show all the classes that the Array class inherits from.

Array.ancestors()

#16. Explain how my_box.methods().count() returns a number greater than 50, even though no methods are defined in the Box class.

class Box
end

my_box = Box.new

#The Box class inherits from the Object class, which gives the Box class all the methods from the object class.

#17. Create a BaseballPlayer class that is initialized with hits, walks, and at_bats.  Add a batting_average() method that returns hits divided by at_bats as a floating point number.  Add an on_base_percentage() method that returns (hits + walks) divided by at_bats as a floating point number.  Demonstrate how the batting_average() and on_base_percentage() methods can be used.

class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits= hits
    @walks= walks
    @at_bats = at_bats
  end

  def batting_average()
    ((@hits.to_f) / (@at_bats.to_f)) * 100
  end

  def on_base_percentage()
    ((@hits + @walks).to_f/ @at_bats) * 100 
  end
end

derek = BaseballPlayer.new(200, 80, 3000)
derek.batting_average
derek.on_base_percentage

#18. Create a Person class that is initialized with a first_name and last_name.  Create first_name() and last_name() methods that return the values of the corresponding instance variables.  Create a full_name() method that concatenates the first_name and last_name in a single string.

class Peep
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name()
    @first_name
  end

  def last_name()
    @last_name
  end

  def full_name()
    puts "#{first_name} #{last_name}"
  end
end

jen = Peep.new("Jen", "Eisenberg")
jen.full_name

#19. Create a module called MathHelpers with the exponent() method that takes a two numbers as arguments and raises the first number to the power of the second number.  Create a class called Calculator with a method called square_root() that takes the square root of the number (raises it to the power of 0.5).  The square_root() method should use the exponent() method.

module MoreMathHelpers
  def exponent(num1, num2)
    num1 ** num2
  end
end

class Calc
  include MoreMathHelpers
  def square_root(number)
    exponent(number, 0.5)
  end
end

meep = Calc.new
meep.square_root(16)
meep.square_root(19)
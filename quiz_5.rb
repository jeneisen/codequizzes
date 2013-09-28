#1. Object oriented programming (OOP) is at the core of Ruby, so even beginners need to know the basic OOP principles.  OOP discussions tend to get abstract and I have made an effort to make this introduction concrete.

#What is the value of the variable x?

x = String.new("i wish i was surfing")

# the value of x is the string "i wish i was surfing"

#2. Make the following object: "i thought he said this wasn't going to be abstract..."

String.new("i thought he said this wasn't going to be abstract...")
#this is an instance of the string class

#3. What does this return?

"hi".methods()
#returns list of methods you can use on the string object. there are a LOT. see irb to check it out.

#4. What does this return?

"hello".upcase()

#returns "HELLO"

#5. What does this return?

"sUp DuDe".swapcase()
#swaps the case, so returns "SuP dUdE"

#6. What does this return?

"This is a sentence, kinda".split()

#returns ["This", "is", "a", "setence", ",", "kinda"]

#7. What is the syntax for calling methods on string objects?  Look at the previous examples and observe the pattern.
#string object followed by a period followed by method

#8. To recap, the String class makes string objects, and the string objects have access to methods like upcase() and downcase().  Create a string object with the text "road trip".

String.new("road trip")

#9. What does this code return?

Array.new()
#returns a instanciated instance of the class Array. so an empty array []

#10. What does this code print?

my_array = Array.new()
my_array.push("nice")
my_array.push("hair")
puts my_array.inspect

#returns ["nice", "hair"]

#11. What is a class?
#a class is a way to make objects. strings, array, hashes are all types or classes of their own.

#12. What is an object?
#an object is an instance of a class. They have lots of methods that can be called on the instance of the class. I.e. the method .to_s can be called on an instance of the Integer class.

#13. How is a String object created?
String.new("hi")

#14. Create a new Hash object.
Hash.new("type" => "Animal")

#15. Create a new Array object and add two string objects to it: "fun" and "games".
my_array = Array.new()
my_array.push("fun", "games")

#16. What does the following code evaluate to?

my_string = String.new("special")
my_string.push("cool")

#string class does not have push method, throws an error.

#17. What does the following code evaluate to?

a_string = String.new("ear")
a_string.class()

# evaluates to String (class)

#18. What does the following code evaluate to?

an_array = Array.new()
an_array.class()

# evaluates to Array

#19. This code is used to create an Animal class with no methods.
class Animal
end

# Create an instance of the Animal class and assign it to the variable fido.

fido = Animal.new()

#20. This code is used to create an Dog class with a speak() method.
class Dog
  def speak()
    return("ruff ruff")
  end
end

# Create an instance of the Dog class and assign it to the variable spot.  Then call the speak() method on the spot dog object.

spot= Dog.new
spot.speak()

#21.Define a Penguin class with a looks() method that returns "We are cute!".

class Penguin
  def looks()
    puts "We are cute!"
  end
end

#22. This code is used to create a Fish class with a general_overview() class method.
class Fish
  def self.general_overview()
    return("Fish are animals that live in the sea")
  end
end

# Call the general_overview() method on the Fish class.

puts Fish.general_overview()

#or
dory = Fish.new
puts dory.general_overview()

#23. Define a Calculator class with an add() class method.  Demonstrate how the add() method can be called to add two numbers.

class Calculator
  def self.add_class(x,y)
    x + y
  end
end


#24. Here is how to define a Person class that is instantiated with a name.
class Person
  def initialize(name)
    @name = name
  end
end

# Identify the key components of this code.
# initialize is a special method that gets run when Person is instanciated
# @name is an instance variable

#25. Here is how to create a Person object with the name "Fred".

class Person
  def initialize(name)
    @name = name
  end
end

my_person_object = Person.new("Fred")

# Explain how the my_person_object was instantiated.
#  The new() method automatically calls the initialize() method and passes the "Fred" argument to the initialize() method. 

#26. Here is how to create a Tiger class with a name and with a method that returns the name.
class Tiger
  def initialize(name)
    @name = name
  end

  def return_tigers_name
    return(@name)
  end
end

simba = Tiger.new("Simba")
puts simba.return_tigers_name()

# Explain how the return_tigers_name() method works.
# returns the value that is stored in the @name instance variable

#27. Create a Celsius class that is initialized with temperature.

class Celsius
  def initialize(temp)
    @temp = temp
  end
  def to_fahrenheit()
    @temp * 1.8 + 32
  end
end

#28. Add a method to_fahrenheit() to the Celsius class that converts the Celsius temperature to Fahrenheit.  The formula to convert Celsius to Fahrenheit is the temperature in Celsius times 1.8 plus 32.

#see above
celsius = Celsius.new(24)
puts celsius.to_fahrenheit()
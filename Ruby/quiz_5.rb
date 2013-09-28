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
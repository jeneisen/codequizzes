# 1. What does this code print?

x = "HELLO"
if true
  puts x
end

# returns "HELLO"

#2. What does this code print?

if true
  y = "Baaaaah"
end
puts y

#returns "Baaaaah"

#3. 

def my_name()
  return("Zoo Lander")
end

# def: keyword for defining method
# my_name(): method my_name
# return("Zoo Lander"): body is executed once method is called 
# end: keyword in ruby to end function definition

#4. What is the difference between the code in the previous example and this code?

def my_name
  "Zoo Lander"
end

# the code in number 3 uses explicit syntax while code in number 4 uses implicit syntax. In ruby it is unecessary to write return or insert () if you aren't calling any parameters.

#5. What does the following code print?

def my_name()
  return("Zoo Lander")
end

puts my_name()

# this returns "Zoo Lander"

#6. What does the following code return?

def add(x, y)
  return(x + y)
end

add(3, 5)

# returns 8

#7.What does the following code print?

y = 10
def add_one_to_variable(variable)
  variable += 1
  return(variable)
end

puts add_one_to_variable(y)
#returns 11

#8. What does the following code print.

cool = "Beans"
def dinner_plans()
  puts cool
end

dinner_plans()

#returns error, not in scope

#9.What does the following code print?

def blah()
  my_var = "my_var has been defined"
end

puts my_var
#returns error, not in variable scope, my_var is local to the function blah

#10. What does the following code print?

def cray()
  lyric = "Stuff is cray cray"
  puts lyric
end

cray()
#returns "Stuff is cray cray"

#11. What does the following code print?

def first_name()
  return("Otto")
end

def last_name()
  return("Mation")
end

def full_name()
  first_name() + " " + last_name()
end

puts full_name()
#returns "Otto Mation"

#12. What does the following code print?

def square_of_number(number)
  return(number * number)
end

def cube_of_number(number)
  return(number * square_of_number(number))
end

puts cube_of_number(2)
#returns 8

#13. Define a method that multiplies two numbers together.

def multiply(number1, number2)
  return(number1 * number2)
end

#14. Define a method called silly_check() that takes a number argument and returns "The number is less than 5" if the argument is less than 5 and "The number is greater than or equal to 5" otherwise.

def silly_check(number)
  if number < 5
    puts "The number is less than 5"
  else
    puts "The number is great than or equal to 5"
  end
end

#15. Define a method called funify() that takes an array as an argument and adds the word "fun" to the end of the array.

def funify(array)
  puts array.push("fun")
end

array = ["hi", "I", "am"]
funify(array)

#16. Define a method called more_fun() that replaces the first element of an array with the word "FUN FUN".

def more_fun(array)
  puts array[0] = "FUN FUN"
end

#17. Define a method called increment_variable() that takes a variables as an argument and adds one to it.

def increment_variable(variable)
  puts variable + 1
end
      













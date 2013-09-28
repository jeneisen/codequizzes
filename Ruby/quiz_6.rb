#1. What does :id.instance_of?(Symbol) return?
#returns TRUE....because the symbol :id is an instance of the symbol class

#2. Iterate over every element of weird_array and add the element to the result array if the element is a Symbol (i.e. an instance of the Symbol class)

result = []
weird_array = ["blah", :meow, 42, 90, :building]

weird_array.each do |word|
  if word.instance_of?(Symbol)
    result.push(word)
  end
end

#result returns [:meow, :building]

#3. Iterate over the sports Array and print out the following list:

sports = ["basketball", "baseball", "football"]

# "0. basketball"
# "1. baseball"
# "2. football"

sports.each_with_index do |name, index|
  puts index.to_s + ". " + name
end

#4. Iterate over last_names and create this array: ["Paul D", "Paul Krugman"]

last_names = ["D", "Krugman"]

last_names.map do |last_name|
  "Paul " + last_name
end

#if you add "puts" it won't give you back the array, it'll just print each item on a new line. If you want the array that MAP gives you, do not use puts.

#5. Return true if any of the elements in the soap_opera array start with the letter "a" and false otherwise.

soap_opera = ["all", "my", "children"]

soap_opera.any? do |word|
  word[0] == "a"
end

# Methods with question marks in Ruby return true or false and are called predicate methods.  

#6. Return true if every element of the tools array starts with an "r" and false otherwise.

tools = ["ruby", "rspec", "rails"]

tools.all? do |word|
  word[0] == "r"
end

# 7. Return true if the string "stimpy" contains the letter "s" and false otherwise.

"stimpy".include?("s")

#8. Create a new array from the captain_planet array with all the elements that contain the letter "a".

captain_planet = ["earth", "fire", "wind", "water", "heart"]

captain_planet.select do |word|
  word.include?("a")
end

#returns new array with ["earth", "water", "heart"] 

#9. Identify the first element in the stuff array that begins with the letters "wa".

stuff = ["candy", :pepper, "wall", :ball, "wacky"]

stuff.find do |word|
  word[0..1] == "wa"
end

#select returns all words that have "wa" as first two elements, where find returns just the first word in the array that begins with the letters "wa"

#10. Identify all the elements in the stuff array that begins with the letters "wa".

stuff.select do |word|
  word[0..1] == "wa"
end

stuff.find_all do |word|
  word[0..1] == "wa"
end

#11. Create the array [:c, :b, :a] from the abcs array.
abcs = [:a, :b, :c]

abcs.reverse!

#12. The people array is an array of two arrays (this is also called a nested array). 

# Get the first element of the people array.

people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]

people[0]

#13. Get the "cool dude" string from the people array.
people[0][1]

#14. Show two ways to concatenate x and y to form the sentence: "the cat and the hat"

x = "cat"
y = "hat"

puts "the " + x + " and the " + y
puts "the #{x} and the #{y}"

#15. Iterate through the people array and print the following sentences:
# Lebron is a cool dude
# Bieber is a jerk face

people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]

people.each do |phrase|
  puts phrase[0] + " is a " + phrase[1]
end

people.each do |name, description|
  puts "#{name} is a #{description}"
end

#16. Create an array of all students with test scores greater than 80.  The result should be [["jon", 99], ["bill", 85]].

test_scores = [["jon", 99], ["sally", 65], ["bill", 85]]

test_scores.select do |name, score|
  score > 80
end

#17. Get the first person from the ages array that is 77 years old.  The result should be [:sue, 77]

ages = [[:frank, 42], [:sue, 77], [:granny, 77]]

ages.find do |name, age|
  age == 77
end

#18. Return the moons of :mars.

planets = {:earth => [:luna], :mars => [:deimos, :phobos], :jupiter => [:callisto, :io, :europa]}

planets[:mars]

#19. Return the moons of :mars as a single string separated by a comma.  Result should be "deimos, phobos".

planets[:mars].join(", ")

#20. Return the number of home_runs that Babe Ruth hit in his career.

baseball_players = {:babe_ruth => {:hits => 2873, :home_runs => 714, :obp => 474}, :barry_bonds => {:hits => 2935, :home_runs => 762, :obp => 444}}
baseball_players[:babe_ruth][:home_runs]

#21. The baseball_players_array has the same information as the hash in the previous questions.  Return the number of home runs that Babe Ruth hit in his career.  Result should be 714.

baseball_players_array = [[:babe_ruth, [2873, 714, 474]], [:barry_bonds, [2935, 762, 444]]]

baseball_players_array[0][1][1]

#22. Describe the data structure of the economists variable.  Get the name of the first element in the economists array (result should be "krugman").
economists = [{:name => "krugman", :specialty => "international macro"}, {:name => "mankiw", :specialty => "pigovian taxation"}]

economists[0][:name]
#economists is an array of hashes
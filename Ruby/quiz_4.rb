#1.What does the following code print?

name = :crank
puts name.inspect()

#says that it is a symbol. symbols are like strings, but they are immutable

#2. What does the following code print?

puts "unicorn".reverse()

#returns "nrocinu"

#3. What does the following code print?

# puts :unicorn.reverse()

#raises error, symbols don't have reverse method

#4. What does this code print?

["fat", "bat", "rat"].each { |word| puts word + "-land" }

#returns "fatland", "batland", "ratland" but on a new line, without the commas

#5. What does this code print?

counter = 0
array = ["fat", "bat", "rat"]
while counter < array.length
  puts array[counter] + "-land"
  counter += 1
end
#"fatland", "batland", "ratland"

#6. What does the following code print?

array = ["snake", "rat", "cat", "dog"]
array.each { |animal| puts animal if animal[0] == "s"  }

#returns "snake"

#7. What does the following code return?

[:a, :b, :c].include?(:a)
#returns true

#8. What does the following code return?

["roof", "top"].include?("bar")
#returns false

#9. What does the following code return?

["Too", "Weird", "To", "Live,", "Too", "Rare", "To", "Die"].join(" ")

#returns "Too Weird To Live Too Rare To Die"
#join method converts all elements of an array to a single string

#10. What does the following code return?

["where's", "wallace", "at"].join("***")
#returns "where's***wallace***at"

#11. What does the following code return?

[2, 4, 6, 8].map { |number| number ** 2 }
# returns [4, 16, 36, 64]
#map iterates through an array and returns a new array

#12. What does the following code return?

[2, 4, 6, 8].map do |number|
  number ** 2
end

#returns [4, 16, 36, 64]
#same as before just different syntax

#13. A hash is collection of key/value pairs and is a fundamental data structure in Ruby (arrays are also a fundamental Ruby data structure).  This is an example of a hash that summarizes the Warty Newt.

warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }

Identify the components of the warty_newt hash.

#has three key/val pairs. type, diet, and life_span

#14. What does the following code return?

warty_newt= { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
warty_newt["type"]

#returns "Amphibian"

#15. What does the following code return?

warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
warty_newt.fetch("type")

#returns "Amphibian"
# fetch is another hash method that returns val associated with the key passed in

#16. What does the following code print?

warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
warty_newt["weight"] = "0.3 ounces"
puts warty_newt

#returns the hash with the new key/val pair added

#{"type"=>"Amphibian", "diet"=>"Carnivore", "life_span"=>"25 years", "weight"=>"0.3 ounces"}

#17. Create a hash for a snowy_owl, a bird that is a carnivore and has a life span of 10 years.

snowy_owl = {"type" => "bird", "diet" => "Carnivore", "life_span" => "10 years"}

#18. What does the following code return?

snowy_owl = { "type"=>"Bird", "type" => "Owl", "diet"=>"Carnivore", "life_span"=>"10 years" }
puts snowy_owl

#returns the hash but with type as "Owl" and not "bird". Every key in a hash MUST be unique

#19. What does the following code return?

snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
snowy_owl.keys()

#returns ["type", "diet", "life_span"]
#keys method for a hash returns as an array

#20. What does the following code return?

snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
snowy_owl.values()

#same as above but with values not keys
#looks like ["Bird", "Carnivore", "10 years"]

#21. What does the following code return?

snowy_owl.select {|key, value| key if key == "type"}

#returns {"type" => "Bird"}

#22. Make a hash that is similar to the snowy_owl hash, but make all of the keys symbols. 

snowy_owl = { ":type"=>"Bird", ":diet"=>"Carnivore", ":life_span"=>"10 years" }


#23. result = []
first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"

# Iterate through first_names and populate result with the first_names and last name (result should be ["Hamburglar McDonald", "Grimace McDonald", "Ronald McDonald"] after the iteration).

first_names.each do |first_name|
  result.push(first_name + "" + last_name)
end

#24. 
personality_types = ["bad", "good", "great"]

# Iterate through personality_types and construct this array: ["bad person", "good person", "great person"]

personality_types.map {|adj| adj + "" + "person"}

#25. Convert ["waters", "too", "polluted", "with", "germs"] to "waters too polluted with germs".

array = ["waters", "too", "polluted", "with", "germs"]
array.join(" ")

#26. 
lebron = {:sport => "basketball", :birthplace => "Akron"}

# Return the value corresponding to the key :sport in the lebron hash.

lebron[:sport]

#27. 
lebron = {:sport => "basketball", :birthplace => "Akron"}

# Add the :high_school key to the lebron hash with the value "St. Vincent-St. Mary High School".

lebron[:high_school] = "St. Vincent-St. Mary High School"

#28. 
lebron = {:sport=>"basketball", :birthplace=>"Akron", :high_school=>"St. Vincent-St. Mary High School"}

# Return an array of all the keys in the lebron hash.

lebron.keys()

#29. 
lebron = {:sport=>"basketball", :birthplace=>"Akron", :high_school=>"St. Vincent-St. Mary High School"}

# Return an array of all the values in the lebron hash.

lebron.values()
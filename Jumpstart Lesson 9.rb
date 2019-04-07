# Ada Jumpstart Lesson 9
# Numbers Problem Assignment

puts "Please enter a positive integer"
num1 = gets.chomp.to_i
num1 += 20

puts "Please enter a positive integer"
num2 = gets.chomp.to_i
num2 += 20

puts "Please enter a positive integer"
num3 = gets.chomp.to_i
num3 += 20

puts "Twenty added to the numbers you entered gives us #{num1}, #{num2}, and #{num3}"

#Sample output: Twenty added to the numbers you entered gives us 40, 80, and 32

puts "__________________________________________________________"
#_______________________________________________________________________________________________________________

# MadLib assignment
puts "Welcome to my MadLib program. Please enter in some information below:"

puts "weather (ending with y):" #weather input
weather = gets.chomp

puts "name:" #name input
name = gets.chomp.capitalize

puts "adjective:" #adjective input
adjective = gets.chomp

puts "noun:" #noun input
noun = gets.chomp

puts "exclamation:" #exclamation input
exclamation = gets.chomp.capitalize

puts "body part:" #body part input
body_part = gets.chomp

puts "food (plural):" #food input
food = gets.chomp

puts "number (larger than one)"
num = gets.chomp.to_s

puts "HERE'S YOUR MADLIB......."
puts "It was a #{weather} day in San Francisco. #{name} was walking to the park when they came across a #{adjective} #{noun} sitting on the sidewalk. \"#{exclamation}\!\", they exclaimed, \"a real life #{noun}\". They went to pick it up and it bit them on the #{body_part}, causing them to drop their #{num} #{food}."

#Sample output: It was a sunny day in San Francisco. Tegan was walking to the park when they came across a horrible hat sitting on the sidewalk. "Wow!", they exclaimed, "a real life hat". They went to pick it up and it bit them on the hand, causing them to drop their 23 tacos.

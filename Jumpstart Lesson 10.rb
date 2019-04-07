#Ada Jumpstart Lesson 10
#Numbers problem assignment
puts "Numbers Problem Assignment"
puts "This program will ask you to enter numbers and share if the number is less than 20."
#number 1
puts "Enter the 1st number:"
number1 = gets.chomp.to_i
if number1 >= 20
  puts "#{number1} is greater than or equal to 20"
else
  puts "#{number1} is less than 20"
end

#number 2
puts "Enter the 2nd number:"
number2 = gets.chomp.to_i
if number2 >= 20
  puts "#{number2} is greater than or equal to 20"
else
  puts "#{number2} is less than 20"
end

#number 3
puts "Enter the 3rd number:"
number3 = gets.chomp.to_i
if number3 >= 20
  puts "#{number3} is greater than or equal to 20"
else
  puts "#{number3} is less than 20"
end


puts "_______________________________________________________________________________"
#______________________________________________________________________________________________________
#Candy Machine Assignment
puts "Candy Machine Assignment"
puts "Welcome to Ada Developers Academy's Computer Candy Machine!"
puts "(All candy provided is virtual.)"

puts "How much money do you have?"
money = gets.chomp.to_f.round(2) #money input

puts "$#{money}, that's all?"
#candy options
puts "Well, lemme tell ya what we got here."
puts "A $0.65 Twix"
puts "B $0.50 Chips"
puts "C $0.75 Nutter Butter"
puts "D $0.65 Peanut Butter Cup"
puts "E $0.55 Juicy Fruit Gum"

puts "So, What'll ya have?"
option = gets.chomp.capitalize

#A
if option == "A" && money >= 0.65
  puts "Thanks for purchasing candy through us."
  change = money - 0.65
  puts "Please take your candy, and your $#{change} change!"
elsif option == "A" && money < 0.65
  puts "You're broke. Take your $#{money} and go elsewhere."
#B
elsif option == "B" && money >= 0.50
  puts "Thanks for purchasing candy through us."
  change = money - 0.50
  puts "Please take your candy, and your $#{change} change!"
elsif option == "B" && money < 0.50
  puts "You're broke. Take your $#{money} and go elsewhere."
#C
elsif option == "C" && money >= 0.75
  puts "Thanks for purchasing candy through us."
  change = money - 0.75
  puts "Please take your candy, and your $#{change} change!"
elsif option == "C" && money < 0.75
  puts "You're broke. Take your $#{money} and go elsewhere."
#D
elsif option == "D" && money >= 0.65
  puts "Thanks for purchasing candy through us."
  change = money - 0.65
  puts "Please take your candy, and your $#{change} change!"
elsif option == "D" && money < 0.65
  puts "You're broke. Take your $#{money} and go elsewhere."
#E
elsif option == "E" && money >= 0.55
  puts "Thanks for purchasing candy through us."
  change = money - 0.55
  puts "Please take your candy, and your $#{change} change!"
elsif option == "E" && money < 0.55
  puts "You're broke. Take your $#{money} and go elsewhere."
end

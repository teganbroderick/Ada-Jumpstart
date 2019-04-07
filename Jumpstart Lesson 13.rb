#Ada Jumpstart Lesson 13
#Numbers problem assignment
puts "Numbers Problem Assignment"
#first hash
hash1 = {}

#randomly generated numbers
rand_num_array = []
5.times do |i|
  randnum = rand(12..21)
  rand_num_array << randnum
end
hash1[:random_numbers] = rand_num_array #append rand_num_array as value to random_numbers key

#user input numbers
num_array = [] #array for user input numbers
5.times do |i|
  puts "Please enter a number between 12 and 21, inclusive"
  num = gets.chomp.to_i
  num_array << num
end
hash1[:user_input] = num_array #append num_array as value for user_input key

puts "For reference: Hash 1 #{hash1}"

#second hash
hash2 = {}
#separate random number hash
random_number_hash = Hash.new 0
#http://jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/
rand_num_array.each do |i|
  random_number_hash[i] += 1
end

#separate user input hash
user_input_hash = Hash.new 0
num_array.each do |i|
  user_input_hash[i] += 1
end

hash2[:random_numbers] = random_number_hash
hash2[:user_input] = user_input_hash

puts "For reference: Hash 2 #{hash2}"

#Output
3.times do |i|
  puts "Give me a number you want information about"
  number = gets.chomp.to_i

  puts "Only using the first hash:"
  #hash 1, random numbers
  rand_numbers = hash1[:random_numbers]
  #loop to find whether user_number exists in random values array
  count = 0
  (0...5).each do |i|
    if number == rand_numbers[i]
      count += 1 #adds 1 if element is present in array
    end
  end
  #output
  if count > 0
    puts "The number #{number} shows up #{count} time(s)in the randomly generated numbers"
  else
    puts "The number #{number} does not show up in the randomly generated numbers"
  end

  #hash 1, user input
  user_numbers = hash1[:user_input]
  #loop to find whether user_number exists in user input values array
  count = 0
  (0...5).each do |i|
    if number == user_numbers[i]
      count += 1 #adds 1 if element is present in array
    end
  end
  #output
  if count > 0
    puts "The number #{number} shows up #{count} time(s) in the user input numbers"
  else
    puts "The number #{number} does not show up in the user input numbers"
  end

  puts "Only using the second hash:"
  #hash 2, random numbers
  value = hash2[:random_numbers][number]
  if  value > 0
    puts "The number #{number} shows up #{value} time(s) in the randomly generated numbers"
  else
    puts "The number #{number} does not show up in the randomly generated numbers"
  end
  #hash 2, user input numbers
  value = hash2[:user_input][number]
  if  value > 0
    puts "The number #{number} shows up #{value} time(s) in the user input numbers"
  else
    puts "The number #{number} does not show up in the user input numbers"
  end
end

puts "_______________________________________________________________________________"
#______________________________________________________________________________________________________
#Student Account Generator Continued
puts "Student Account Generator"
student_data = []

5.times do |i|
  hash = {}
  #enter name
  puts "Please enter a first name and last name"
  name = gets.chomp.upcase
  hash[:name] = name

  #generate ID
  id = rand(111111..999999)
  id = id.to_s
  hash[:ID] = id

  #split first and last name, get first letter of first name, get lastname, get last three numbers of ID, and combine into email address
  name = name.upcase
  temp_array = []
  splitName = name.split(" ")
  firstLetter = splitName[0][0]
  lastName = splitName[1]
  tempID = id[3..5].to_s

  #email
  email = firstLetter + lastName + tempID + "@adadevelopersacademy.org"
  hash[:email] = email

  #push hash to array
  student_data << hash
end

puts "Student Data: #{student_data.inspect}"

puts "_______________________________________________________________________________"
#______________________________________________________________________________________________________
#Walk-a-thon
puts "Walkathon assignment"
puts "Welcome to Tegan's Walk-A-Thon Tracker"
puts "Our goal is to raise money!"

puts "Enter the earning goal for this event"
earning_goal = gets.chomp.to_f

puts "Enter the amount earned per lap (per person)"
lap_earning = gets.chomp.to_f

lap_array = [] #holds amount of laps completed by each person
earning_array = []
puts "Please enter the number of laps completed by each person."

(1..5).each do |i|
  puts "Walker # #{i}"
  amount = gets.chomp.to_f
  lap_array << amount
  earning = amount * lap_earning
  puts "Earned $#{earning}"
  earning_array << earning
end

puts ""
puts "========================================"

#Highest earning walker
highest_value = lap_array.max #highest value in lap_array
highest_index = lap_array.index(highest_value) #index of the highest value in lap_array
puts "Highest earning walker: # #{highest_index + 1}"

#Total amount earned
sum = 0 #sum of all earnings
(0..4).each do |i|
  sum += earning_array[i]
end

puts "Total amount earned: $#{sum}"

#Did we meet the goal?
if sum > earning_goal
  puts "Goal Met? YES :-)"
else
  puts "Goal Met? NO :-("
end

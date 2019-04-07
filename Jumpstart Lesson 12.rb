#Ada Jumpstart Lesson 12

#Numbers problem assignment
puts "Numbers Problem Assignment"
puts "How many numbers do you want to enter?"
inputNo = gets.chomp.to_i
list= []

(0...inputNo).each do |i|
  puts "input a positive integer value"
  integer = gets.chomp.to_i
  list << integer
end

lastNum = list[inputNo - 1] #last number entered

puts "Comparing to the last value entered, #{lastNum}, here are the observations:"
puts ""

count = 0 #count to print the list index for each loop, starting at 0
list.each do |i| #loop for each item in the list
  puts i
  if i < lastNum
    puts "the value at index #{count}, #{i}, is less than the value at the last index, #{lastNum}."
  elsif i > lastNum
    puts "the value at index #{count}, #{i}, is greater than the value at the last index, #{lastNum}."
  else
    puts "the value at index #{count}, #{i}, is equal to the value at the last index, #{lastNum}."
  end
  count = count + 1
end

#max and min values in list
minValue = list.min #minimum value
maxValue = list.max #maximum value
puts "The minimum value in the array is #{minValue}"
puts "The maximum value in the array is #{maxValue}"

#total of all values and average
total = 0
list.each do |i|
  total += i
end

average = total / inputNo

puts "The average of all the values in the array is #{average}"

puts "_______________________________________________________________________________"
#______________________________________________________________________________________________________
#Student Account Generator
puts "Student Account Generator"

#1
nameList = []
idList = []
emailList = []
splitNameList = []
firstNameList =[]
lastNameList = []

#2
5.times do |i|
  puts "Please enter a first name and last name"
  name = gets.chomp.upcase
  nameList << name
end

#3
5.times do |i|
  id = rand(111111..999999)
  id = id.to_s
  idList << id
end

#4
#Splits first and last names into separate array elements
(0...5).each do |i|
  tempName = nameList[i]
  tempName = tempName.upcase
  splitName = tempName.split(" ")
  splitNameList << splitName
end

#appends first names to a new array
(0...5).each do |i|
  tempName = splitNameList[i][0]
  firstNameList << tempName
end

#appends last names to a new array
(0...5).each do |i|
  tempName = splitNameList[i][1]
  lastNameList << tempName
end

#Gets necessary parts of each array element and combines them into an email address
5.times do |i|
  firstName = firstNameList[i]
  lastName = lastNameList[i]
  tempID = idList[i]
  tempID = tempID[3..5]
  email = firstName[0] + lastName + tempID + "@adadevelopersacademy.org"
  emailList << email
end
#outputs email addresses
puts "Email List: #{emailList}"

#5
(0...5).each do |i|
  puts "#{firstNameList[i]}  #{lastNameList[i]} #{idList[i]} #{emailList[i]}"
end

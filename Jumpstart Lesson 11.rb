#Ada Jumpstart lesson 11

#Numbers problem assignment
puts "Numbers Problem Assignment version 1"
#Version 1
puts "Let's play a numbers game. How many numbers would you like to enter?"
number = gets.chomp.to_i

number.times do |i|
  puts "Enter positive integer #{i+1}:"
  integer = gets.chomp.to_i

  if integer%3 == 0
    puts "#{integer} is divisible by 3"
  else
    puts "#{integer} is not divisible by 3"
  end
  puts ""
end

puts "_______________________________________________________________________________"
#Version 2
puts "Numbers Problem Assignment version 2"
puts "Let's play a numbers game. How many numbers would you like to enter?"
number = gets.chomp.to_i

(0...number).each do |i|
  puts "Enter positive integer #{i+1}:"
  integer = gets.chomp.to_i

  if integer%3 == 0
    puts "#{integer} is divisible by 3"
  else
    puts "#{integer} is not divisible by 3"
  end
  puts ""
end

puts "_______________________________________________________________________________"
#______________________________________________________________________________________________________
#Election time assignment
puts "Welcome to my election voting program."
puts ""
puts "Election candidates are: Donald Duck, Minnie Mouse, Goofy"

countDuck = 0
countMinnie = 0
countGoofy = 0

10.times do |i|
  puts "vote ##{i+1}"
  cantidate = gets.chomp
  cantidate = cantidate.upcase

  if cantidate == "DONALD DUCK"
    countDuck += 1
  elsif cantidate == "MINNIE MOUSE"
    countMinnie += 1
  elsif cantidate == "GOOFY"
    countGoofy += 1
  else
    puts "Not a cantidate"
  end
end

puts "ELECTION RESULTS...."

puts "Vote Summary:"
puts "Goofy - #{countGoofy} vote(s)"
puts "Minnie Mouse - #{countMinnie} vote(s)"
puts "Donald Duck - #{countDuck} vote(s)"

if countGoofy > countMinnie && countGoofy > countDuck
  puts "WINNER: Goofy!"
elsif countMinnie > countGoofy && countMinnie > countDuck
  puts "WINNER: Minnie Mouse!"
elsif countDuck > countGoofy && countDuck > countMinnie
  puts "WINNER: Donald Duck!"
else
  puts "Its a tie"
end

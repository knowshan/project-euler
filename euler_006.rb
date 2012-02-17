#!/usr/bin/env ruby

# http://projecteuler.net/problem=6

# Get input
def get_input
  puts "This program calculates difference between the sum of the squares and \nthe square of the sum for a given number."
  puts "See http://projecteuler.net/problem=6 for complete problem statement"
  puts "Enter '100' to get solution for problem 6"
  print "Enter number: "
  n = gets.to_i
  return n
end

# Sum of squared numbers
# Sum(i^2) where i=0 to i=n 
def squared_nos_sigma(limit)
  i=0
  sum=0
  n = limit
  while i<=n do
    sum = sum + i*i
    i+=1
  end 
  return sum
end

# 
def sigma_square(limit)
  n = limit
  # Summation of first n numbers is n*(n+1)/2
  sums = n*(n+1)/2
  sums = sums*sums
  return sums
end

# Main() Method calls
limit = get_input
sum_of_squares = squared_nos_sigma(limit)
square_of_sum = sigma_square(limit)
diff = square_of_sum - sum_of_squares
puts "Difference between the square of the sum and the sum of the squares of the first #{limit} natural numbers: #{diff}"
